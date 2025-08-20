enum AnalyticsEvent {
  storeView('store_view'),
  storeOrder('store_order');

  final String value;

  const AnalyticsEvent(this.value);
}
