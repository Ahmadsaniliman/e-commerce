import 'package:e_commm/Util/error_dialog.dart';
import 'package:e_commm/constants/enums.dart';
import 'package:e_commm/constants/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PopUpButton extends StatelessWidget {
  const PopUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuActions>(
      onSelected: (value) async {
        switch (value) {
          case MenuActions.logout:
            final shouldLogout = await showLogOutDialog(context);
            if (shouldLogout!) {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamedAndRemoveUntil(
                loginRoute,
                (route) => false,
              );
            }
            break;
          case MenuActions.history:
            //
            break;
        }
      },
      elevation: 1.0,
      itemBuilder: (context) => [
        const PopupMenuItem(
          value: MenuActions.logout,
          child: Text('Logout'),
        ),
        const PopupMenuItem(
          value: MenuActions.history,
          child: Text('History'),
        ),
      ],
    );
  }
}
