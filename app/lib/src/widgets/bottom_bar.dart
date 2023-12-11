import 'package:GUConnect/routes.dart';
import 'package:GUConnect/src/models/User.dart';
import 'package:GUConnect/src/providers/UserProvider.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(context) {
    final userProvider = Provider.of<UserProvider>(context, listen: true);

    if (userProvider.user == null) {
      Navigator.of(context).popAndPushNamed('/login');
    }

    final CustomUser user = userProvider.user as CustomUser;
    // check if user is admin
    final bool isAdmin = user.userType == UserType.admin;

    void navigate(String routeName) {
      if (ModalRoute.of(context)!.settings.name != routeName) {
        Navigator.pushNamed(context, routeName);
      }
    }

    // check which page is active
    bool isActive(String routeName) {
      return routeName == ModalRoute.of(context)!.settings.name;
    }

    final adminRoutes = [
      IconButton(
        onPressed: () {
          navigate(CustomRoutes.clubsAndEvents);
        },
        icon: Icon(
          Icons.home_outlined,
          color: isActive(CustomRoutes.admin)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onBackground,
          size: 28,
        ),
      ),
      IconButton(
        onPressed: () {
          navigate(CustomRoutes.admin);
        },
        icon: Icon(
          Icons.receipt,
          color: isActive(CustomRoutes.adminReports)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onBackground,
          size: 28,
        ),
      ),
      Transform.translate(
        offset: const Offset(
            0, -17), // Adjust the Y offset to shift the diamond icon up
        child: Transform.rotate(
          angle: pi / 4,
          child: Container(
            height: 55,
            width: 67,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Theme.of(context).colorScheme.primary,
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Theme.of(context).colorScheme.primary,
                  const Color.fromARGB(255, 244, 200, 133),
                ],
              ),
            ),
            child: Transform.rotate(
                angle: -pi / 4,
                child: Icon(
                  Icons.confirmation_num_outlined,
                  color: Theme.of(context).colorScheme.onSecondary,
                  size: 32,
                )),
          ),
        ),
      ),
      IconButton(
        onPressed: () {
          navigate(CustomRoutes.adminNotifications);
        },
        icon: Icon(
          Icons.notifications_outlined,
          color: isActive(CustomRoutes.adminNotifications)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onBackground,
          size: 28,
        ),
      ),
      IconButton(
        onPressed: () {
          navigate(CustomRoutes.profile);
        },
        icon: Icon(
          Icons.person_outline,
          color: isActive(CustomRoutes.profile)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onBackground,
          size: 28,
        ),
      ),
    ];

    final userRoutes = [
      IconButton(
        onPressed: () {
          navigate(CustomRoutes.clubsAndEvents);
        },
        icon: Icon(
          Icons.home_outlined,
          color: isActive(CustomRoutes.home)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onBackground,
          size: 28,
        ),
      ),
      IconButton(
        onPressed: () {
          navigate(CustomRoutes.confessions);
        },
        icon: Icon(
          Icons.people_outline_rounded,
          color: isActive(CustomRoutes.confessions)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onBackground,
          size: 28,
        ),
      ),
      Transform.translate(
        offset: const Offset(
            0, -17), // Adjust the Y offset to shift the diamond icon up
        child: Transform.rotate(
          angle: pi / 4,
          child: Container(
            height: 55,
            width: 67,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Theme.of(context).colorScheme.primary,
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Theme.of(context).colorScheme.primary,
                  const Color.fromARGB(255, 244, 200, 133),
                ],
              ),
            ),
            child: Transform.rotate(
                angle: -pi / 4,
                child: IconButton(
                  onPressed: () {
                    navigate(CustomRoutes.search);
                  },
                  icon: Icon(
                    Icons.search_outlined,
                    color: Theme.of(context).colorScheme.onSecondary,
                    size: 32,
                  ),
                )),
          ),
        ),
      ),
      IconButton(
        onPressed: () {
          navigate(CustomRoutes.notifications);
        },
        icon: Icon(
          Icons.notifications_outlined,
          color: isActive(CustomRoutes.notifications)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onBackground,
          size: 28,
        ),
      ),
      IconButton(
        onPressed: () {
          navigate(CustomRoutes.profile);
        },
        icon: Icon(
          Icons.person_outline,
          color: isActive(CustomRoutes.profile)
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onBackground,
          size: 28,
        ),
      ),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: isAdmin ? adminRoutes : userRoutes,
    );
  }
}
