import 'package:flutter/material.dart';

class Calls extends StatefulWidget {

  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}
class _CallsState extends State<Calls> {
  final time = [
    "Today, 10:30 AM",
    "Today, 1:00 PM",
    "Today, 8:30 PM",
    "Yesterday, 11:30 PM",
    "Yesterday, 10:00 PM",
    "Today, 1:00 PM",
    "Today, 8:30 PM",
    "Yesterday, 11:30 PM",
    "Today, 1:00 PM",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(children: [
          ListTile(
            leading: Image.asset("assets/image/calllink.jpg"),
            title: Text("Create call link",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            subtitle: Text("Share a link for your Whatsapp call"),
            onTap: (){},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 10),
            child: Padding(
              padding: const EdgeInsets.only(right: 320),
              child: Text("Recent",style: TextStyle(fontSize: 20),),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: time.length,
              itemBuilder: (context, index) {
                final names = ["Bosco", "Ben", "Rose", "Uncle", "Teena","Bosco", "Ben", "Rose", "Uncle"];
                final image = [
                  "assets/image/boy.png",
                  "assets/image/men.png",
                  "assets/image/g3.png",
                  "assets/image/uncle.png",
                  "assets/image/g2.png",
                  "assets/image/boy.png",
                  "assets/image/men.png",
                  "assets/image/g3.png",
                  "assets/image/uncle.png",
                ];
                return ListTile(
                    leading: Image.asset("${image[index]}"),
                    title: Text(
                      "${names[index]}", style: TextStyle(fontSize: 20),),
                    subtitle: Text("${time[index]}"),
                    trailing: Icon(Icons.call, color: Colors.teal[700],),
                    onTap: () {}
                );
              }
              ,),
          )
        ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Card(
            color: Colors.teal[800],
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.add_ic_call_rounded,color: Colors.white,size: 30,)),
          )
        ],
      ),
    );
  }
}
