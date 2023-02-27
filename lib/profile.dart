import 'package:flutter/material.dart';

import 'drawer.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/user.jpg'),
              backgroundColor: Colors.cyan,
            ),
            const Text(
              'Dhruv Johari',
              style: TextStyle(
                fontFamily: 'ShantellSans',
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                color: Colors.teal.shade100,
                fontFamily: 'SourceSanPro',
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10.0,
              width: 180.0,
              child: Divider(
                height: 2,
                thickness: 2,
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.teal.shade200,
                ),
                title: Text(
                  '+91 9811592077',
                  style: TextStyle(
                      color: Colors.teal.shade300,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Source San Pro'),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade100,
                ),
                title: Text(
                  'dhruvjohari27@gmail.com',
                  style: TextStyle(
                    fontFamily: 'Source San Pro',
                    fontSize: 20.0,
                    color: Colors.teal.shade300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
