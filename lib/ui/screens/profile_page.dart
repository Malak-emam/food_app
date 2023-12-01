
import 'package:demo_1/ui/screens/widgets/profile_widgets.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(16),
                height: size.height,
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: 150,
                          child: const CircleAvatar(
                              radius: 60,
                              //change the profile pic bec it didn't let me
                              //add new pics in asset folder, will send the pic
                              backgroundImage: ExactAssetImage('assets/profile.jpg')
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Constants.primaryColor.withOpacity(.5),
                                width: 5.0,
                              )
                          )
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          width: size.width *.3,
                          child: Row(
                              children: [
                                Text('Salwa Maher', style: TextStyle(
                                  color:Constants.blackColor,
                                  fontSize: 20,
                                ),),
                              ]
                          )
                      ),
                      Text('salwamaherr@gmail.com', style: TextStyle(
                        color: Constants.blackColor,
                      ),),
                      const SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                          height: size.height * .7,
                          width: size.width,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                ProfileWidget(icon: Icons.person, title: 'My Profile'),
                                ProfileWidget(icon: Icons.settings, title: 'Settings'),
                                ProfileWidget(icon: Icons.notifications, title: 'Notifications'),
                                ProfileWidget(icon: Icons.share, title: 'Share'),
                                ProfileWidget(icon: Icons.logout, title: 'Log Out'),
                              ]
                          )
                      )
                    ]
                )
            )
        )
    );
  }
}



