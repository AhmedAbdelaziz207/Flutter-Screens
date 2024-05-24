import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueGrey.shade900,
        child: ListView(children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage:
                      AssetImage('assets/images/tomas_profile.jpg'),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
