import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("New community",style: TextStyle(fontWeight: FontWeight.bold),),
            onTap: (){},
            leading:Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image(image: AssetImage("assets/image/community.jpg")),
            )
          ),
        ],
      ),
    );
  }
}
