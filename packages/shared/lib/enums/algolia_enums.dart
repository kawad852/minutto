enum AlgoliaIndices {
  categories('categories'),
  products('products'),
  foodStores('foodStores');

  final String value;

  const AlgoliaIndices(this.value);
}

enum QuerySuggestionsIndices {
  products('products_query_suggestions');

  final String value;

  const QuerySuggestionsIndices(this.value);
}

enum InsightsEnum {
  productClickAfterSearch('product_click_after_search'),
  productConverted('product_converted'),
  productClickBrowse('product_click_browse'),
  storeClickAfterSearch('store_click_after_search'),
  storeConverted('store_converted'),
  storeClickBrowse('store_click_browse'),
  filterClicked('filter_clicked');

  final String value;
  const InsightsEnum(this.value);
}
