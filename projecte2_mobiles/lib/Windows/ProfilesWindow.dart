import 'package:flutter/material.dart';
import 'package:projecte2_mobiles/Widgets/WidgetsProfile/InformationProfile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 65, 65, 65),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1000, 65, 65, 65),
        title: const Text("Profile"),
      ),
      body: const InformationProfile(),
    );
  }
}
