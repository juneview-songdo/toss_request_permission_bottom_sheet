import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../item/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Please allow permissions to use the app.")
                .textStyle(Theme.of(context).textTheme.titleLarge!)
                .fontWeight(FontWeight.w800)
                .fontSize(20),
            Gap(5),
            Text("We only request essential permissions.")
                .textStyle(Theme.of(context).textTheme.titleLarge!)
                .fontWeight(FontWeight.w800)
                .fontSize(20),
            Gap(50),
            ItemView(
              icon: Icons.phone,
              permissionTitle: "Call",
              permissionDescription:
                  "Read phone numbers and add friends' accounts.",
            ),
            ItemView(
                icon: Icons.contacts,
                permissionTitle: "Contacts",
                permissionDescription:
                    "You can send money for free to people saved in your contacts, load profile pictures, and send invitation messages for various benefits. To do this, we synchronize contact information with the Toss server to keep it up to date."),
            ItemView(
                icon: Icons.folder,
                permissionTitle: "Storage",
                permissionDescription:
                    "Log in with a digital certificate and save transfer confirmation receipts or QR codes."),
            ItemView(
                icon: Icons.track_changes,
                permissionTitle: "App tracking",
                permissionDescription:
                    "We display personalized ads in a non-intrusive manner to maintain the app and server."),
            Gap(20),
            MaterialButton(
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Login")
                        .textStyle(Theme.of(context).textTheme.bodyLarge!)
                        .textColor(Colors.white))
                .width(1.sw)
                .height(60),
          ],
        ),
      ),
    );
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}
