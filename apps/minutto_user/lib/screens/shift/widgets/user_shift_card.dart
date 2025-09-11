import 'package:shared/shared.dart';

class UserShiftCard extends StatefulWidget {
  final UserModel user;
  final DateTime date;

  const UserShiftCard({
    super.key,
    required this.user,
    required this.date,
  });

  @override
  State<UserShiftCard> createState() => _UserShiftCardState();
}

class _UserShiftCardState extends State<UserShiftCard> {
  late Stream<DocumentSnapshot<ShiftAssignmentModel>?> _stream;

  void _initialize() {
    _stream = FirebaseFirestore.instance.shiftAssignments
        .doc(widget.date.assignedShiftId(widget.user.id))
        .snapshots();
  }

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  @override
  void didUpdateWidget(covariant UserShiftCard oldWidget) {
    final oldAssignedShiftId = oldWidget.date.assignedShiftId;
    final assignedShiftId = widget.date.assignedShiftId;
    if (oldAssignedShiftId != assignedShiftId) {
      _initialize();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    final shifts = MyStorage.shifts;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: context.colorPalette.greyF9F,
        border: Border.all(color: context.colorPalette.greyEAE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: UserTile(
              user: user,
            ),
          ),
          Expanded(
            child: Material(
              type: MaterialType.transparency,
              child: Center(
                child: BlitzBuilder.stream(
                  stream: _stream,
                  onComplete: (context, snapshot) {
                    var assignedShift = snapshot.data?.data();
                    return ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(height: 0),
                      itemCount: shifts.length,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final shift = shifts[index];
                        final selected = (assignedShift?.shiftId ?? user.shiftId) == shift.id;
                        return CheckboxListTile(
                          dense: true,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          controlAffinity: ListTileControlAffinity.leading,
                          contentPadding: EdgeInsetsDirectional.zero,
                          value: selected,
                          onChanged: (checked) async {
                            final ref = snapshot.data?.reference;
                            if (ref == null) return;

                            final userShiftId = user.shiftId;
                            final currentAssignedId = assignedShift?.shiftId;
                            final tappedId = shift.id;

                            if (checked == true) {
                              if (tappedId == userShiftId) {
                                if (assignedShift != null) {
                                  await ref.delete();
                                }
                              } else {
                                if (assignedShift == null) {
                                  final newAssignment = ShiftAssignmentModel(
                                    shiftId: tappedId,
                                    id: widget.date.assignedShiftId(widget.user.id),
                                    createdAt: DateTime.now(),
                                    userId: MySharedPreferences.user!.id,
                                  );
                                  await ref.set(newAssignment);
                                } else if (currentAssignedId != tappedId) {
                                  await ref.update({
                                    MyFields.shiftId: tappedId,
                                  });
                                }
                              }
                            } else {
                              if (currentAssignedId == tappedId) {
                                await ref.delete();
                              }
                            }
                          },
                          title: Text(
                            shift.name,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
