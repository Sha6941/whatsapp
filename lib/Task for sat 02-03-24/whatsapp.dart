import 'package:flutter/material.dart';
import 'package:whatsapp/Task%20for%20sat%2002-03-24/Groups.dart';
import 'package:whatsapp/Task%20for%20sat%2002-03-24/calls.dart';
import 'package:whatsapp/Task%20for%20sat%2002-03-24/w1.dart';
import 'package:whatsapp/Task%20for%20sat%2002-03-24/w2.dart';
 void main(){
   runApp(Whatsapp1());
 }
class Whatsapp1 extends StatefulWidget {
  const Whatsapp1({super.key});

  @override
  State<Whatsapp1> createState() => _Whatsapp1State();
}

class _Whatsapp1State extends State<Whatsapp1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DefaultTabController(length: 4, 
          child:Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(backgroundColor: Colors.teal[800],title: Text("Whatsapp",style: TextStyle(color: Colors.white),),
             actions: [
               IconButton(onPressed: () {

               }, icon:Icon(Icons.camera_alt_outlined,color: Colors.white,)),
               IconButton(onPressed: () {

               }, icon: Icon(Icons.search,color: Colors.white,)),
               PopupMenuButton(
                 offset:Offset(0, 45),
                 iconColor: Colors.white,
                   itemBuilder: (context) =>
                 [PopupMenuItem(child:
                   Text("New group")
                 ),
                   PopupMenuItem(child:
                   Text("New brodcast")
                   ),
                   PopupMenuItem(child:
                   Text("Linked device")
                   ),
                   PopupMenuItem(child:
                   Text("Starred messages")
                   ),
                   PopupMenuItem(child:
                   Text("Payments")
                   ),
                   PopupMenuItem(child:
                   Text("Settings")
                   )
                ])],
              bottom:TabBar(tabs: [
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Tab(icon: Padding(
                   padding: const EdgeInsets.only(right:0),
                   child: Icon(Icons.groups,color: Colors.white,),
                 )),
               ],
             ),
              Tab(child: Text("Chats",style: TextStyle(color: Colors.white),),),
              Tab(child: Text("Updates",style: TextStyle(color: Colors.white),),),
              Tab(child: Text("Calls",style: TextStyle(color: Colors.white),),)


            ]) ,
            ),
            body: TabBarView(children: [
              Community(),
              Chats(),
              Updates(),
              Calls(),
            ]),
          ),
      )
    );
  }
}
