import '../../shared.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListBody(
              children: [
                ElasticIn(
                  child: Icon(
                    Icons.search,
                    size: 50,
                    color: context.colorScheme.secondary,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Text(
                    context.appLocalization.noResults,
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
