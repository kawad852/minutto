import '../shared.dart';

class PortalDrawerModel {
  final String title;
  final IconData icon;
  bool expanded;

  PortalDrawerModel({required this.title, required this.icon, this.expanded = false});
}
