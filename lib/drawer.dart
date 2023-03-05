import 'package:flutter/material.dart';
import 'package:i_am_rich/magicball.dart';
import 'package:i_am_rich/profile.dart';
import 'package:i_am_rich/quizpage.dart';
import 'package:i_am_rich/xylophone.dart';

import 'dice.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Flutter Development',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.roller_shades),
            title: const Text('Dice'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const Dice(),
                ),
              ),
            },
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {
              // Navigator.push(context,MaterialPageRoute(builder: (_) => const Profile(),)),
            },
          ),
          ListTile(
            leading: const Icon(Icons.surround_sound_outlined),
            title: const Text('Xylophone'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Xylophone()),
              )
            },
          ),
          ListTile(
            leading: const Icon(Icons.sports_basketball),
            title: const Text('MagicBall'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MagicBall()),
              ),
            },
          ),
          ListTile(
            leading: const Icon(Icons.quiz),
            title: const Text('Quiz Page'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const QuizPage()),
              ),
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
