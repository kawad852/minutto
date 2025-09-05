import 'package:shared/shared.dart';

class SalaryAdvanceCard extends StatelessWidget {
  final RequestModel request;

  const SalaryAdvanceCard({
    super.key,
    required this.request,
  });

  @override
  Widget build(BuildContext context) {
    final user = request.user;
    final branch = CacheService.instance.getBranch(user.branchId);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        border: Border.all(color: context.colorPalette.greyEAE),
        borderRadius: BorderRadius.circular(kRadiusSecondary),
      ),
      child: Row(
        spacing: 8,
        children: [
          BaseNetworkImage(
            user.profileImage,
            width: 50,
            height: 50,
            shape: BoxShape.circle,
          ),
          Expanded(
            child: Column(
              spacing: 2,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.black,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "${user.jobTitle}, ${branch.name}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.grey8C8,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "${context.appLocalization.orderDate}: ${request.createdAt.defaultFormat}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: context.colorPalette.blue475,
                    fontSize: 12,
                  ),
                ),
                if (request.statusChangedAt != null)
                  Text(
                    "${context.appLocalization.acceptanceDate}: ${request.statusChangedAt!.defaultFormat}",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: context.colorPalette.blue475,
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          ),
          Text(
            "${request.amount} ${context.currency}",
            style: TextStyle(
              color: context.colorPalette.green19B,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
