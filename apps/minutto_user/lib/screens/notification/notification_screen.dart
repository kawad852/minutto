import 'package:flutter_svg_provider/flutter_svg_provider.dart' as sv;
import 'package:minutto_user/minutto_user.dart';
import 'package:shared/shared.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late Query<NotificationModel> _query;

  FirebaseFirestore get _firebaseFirestore => FirebaseFirestore.instance;

  void _initialize() {
    _query = _firebaseFirestore.userNotifications.orderByCreatedAtDesc;
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: sv.Svg(MyIcons.scaffoldBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(context.appLocalization.notifications),
          backgroundColor: Colors.transparent,
        ),
        body: BlitzBuilder.query(
          query: _query,
          onComplete: (context, snapshot, _) {
            if (snapshot.docs.isEmpty) {
              return EmptyWidget();
            }
            final notifications = snapshot.docs;
            return ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 13),
              itemCount: notifications.length,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              itemBuilder: (context, index) {
                final notification = notifications[index].data();
                return NotificationCard(
                  notificationModel: notification,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
