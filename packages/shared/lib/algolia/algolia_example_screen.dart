import 'package:algolia_helper_flutter/algolia_helper_flutter.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'algolia_classes.dart';

class AlgoliaExampleScreen extends StatefulWidget {
  const AlgoliaExampleScreen({super.key});

  @override
  State<AlgoliaExampleScreen> createState() => _AlgoliaExampleScreenState();
}

class _AlgoliaExampleScreenState extends State<AlgoliaExampleScreen> {
  final _searchTextController = TextEditingController();

  final _productsSearcher = HitsSearcher(
    applicationID: 'latency',
    apiKey: '927c3fe76d4b52c5a2912973f35a3077',
    indexName: 'STAGING_native_ecom_demo_products',
  );

  Stream<SearchMetadata> get _searchMetadata =>
      _productsSearcher.responses.map(SearchMetadata.fromResponse);

  Stream<HitsPage> get _searchPage =>
      _productsSearcher.responses.map(HitsPage.fromResponse);

  final GlobalKey<ScaffoldState> _mainScaffoldKey = GlobalKey();

  final _filterState = FilterState();

  late final _facetList = _productsSearcher.buildFacetList(
    filterState: _filterState,
    attribute: 'brand',
  );

  PagingState<int, Product> _pagingState = PagingState(
    hasNextPage: true,
    isLoading: false,
  );

  @override
  void initState() {
    super.initState();

    _searchTextController.addListener(
      () => _productsSearcher.applyState(
        (state) => state.copyWith(query: _searchTextController.text, page: 0),
      ),
    );

    _searchPage
        .listen((page) {
          setState(() {
            _pagingState = _pagingState.copyWith(
              pages: page.pageKey == 0
                  ? [page.items]
                  : [...?_pagingState.pages, page.items],
              keys: page.pageKey == 0
                  ? [page.pageKey]
                  : [...?_pagingState.keys, page.pageKey],
              hasNextPage: !page.isLastPage,
              isLoading: false,
            );
          });
        })
        .onError(
          (error) => setState(
            () => _pagingState = _pagingState.copyWith(error: error),
          ),
        );
    _productsSearcher.connectFilterState(_filterState);
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    _productsSearcher.dispose();
    _filterState.dispose();
    _facetList.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _mainScaffoldKey,
      appBar: AppBar(
        title: const Text('Algolia & Flutter'),
        actions: [
          IconButton(
            onPressed: () => _mainScaffoldKey.currentState?.openEndDrawer(),
            icon: const Icon(Icons.filter_list_sharp),
          ),
        ],
      ),
      endDrawer: Drawer(child: _filters(context)),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 44,
              child: TextField(
                controller: _searchTextController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter a search term',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            StreamBuilder<SearchMetadata>(
              stream: _searchMetadata,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${snapshot.data!.nbHits} hits'),
                );
              },
            ),
            Expanded(
              child: PagedListView<int, Product>(
                state: _pagingState,
                fetchNextPage: () async {
                  _productsSearcher.applyState(
                    (state) => state.copyWith(
                      page: (_pagingState.keys?.last ?? -1) + 1,
                    ),
                  );
                },
                builderDelegate: PagedChildBuilderDelegate<Product>(
                  noItemsFoundIndicatorBuilder: (_) =>
                      const Center(child: Text('No results found')),
                  itemBuilder: (_, item, __) => Container(
                    color: Colors.white,
                    height: 80,
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        SizedBox(width: 50, child: Image.network(item.image)),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text(item.name), Text(item.brand)],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///Widgets

  Widget _filters(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Filters')),
    body: StreamBuilder<List<SelectableItem<Facet>>>(
      stream: _facetList.facets,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox.shrink();
        }
        final selectableFacets = snapshot.data!;
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: selectableFacets.length,
          itemBuilder: (_, index) {
            final selectableFacet = selectableFacets[index];
            return CheckboxListTile(
              value: selectableFacet.isSelected,
              title: Text(
                "${selectableFacet.item.value} (${selectableFacet.item.count})",
              ),
              onChanged: (_) {
                _facetList.toggle(selectableFacet.item.value);
              },
            );
          },
        );
      },
    ),
  );
}
