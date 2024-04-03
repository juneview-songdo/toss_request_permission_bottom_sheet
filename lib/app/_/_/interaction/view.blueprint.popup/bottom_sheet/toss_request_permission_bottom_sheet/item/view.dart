import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class ItemView extends StatefulWidget {
  ItemView({super.key, required this.icon, required this.permissionTitle, required this.permissionDescription});

  final IconData icon;
  final String permissionTitle;
  final String permissionDescription;

  @override
  State<ItemView> createState() => StateChild();
}

class ItemViewState extends State<ItemView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(widget.icon, color: Colors.grey.shade500, size: 33),
        Gap(12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.permissionTitle)
                  .textStyle(Theme.of(context).textTheme.bodyLarge!)
                  .fontWeight(FontWeight.bold)
                  .textColor(Colors.grey.shade700)
                  .fontSize(16),
              Gap(6),
              Text(
                widget.permissionDescription,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              )
                  .textStyle(Theme.of(context).textTheme.bodyMedium!)
                  .fontWeight(FontWeight.normal)
                  .textColor(Colors.grey.shade600)
                  .fontSize(13),
            ],
          ),
        )
      ],
    ).padding(bottom: 30);
  }
}

main() async {
  return buildApp(appHome: ItemView(
    icon: Icons.add,
    permissionTitle: 'Permission Title',
    permissionDescription: 'Permission Description',
  ).center());
}