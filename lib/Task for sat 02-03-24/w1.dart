import 'package:flutter/material.dart';
    //4
class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
    //3
  @override
  Widget build(BuildContext context) {
    final names=["David","Philip","Prof","Ma'am","Ben","Rose","Uncle","Teena","Bosco","Daisy","Jhon"];
    final image=["assets/image/boy.png","assets/image/user.jpg","assets/image/user5.webp",
      "assets/image/g5.png","assets/image/men.png","assets/image/g3.png","assets/image/uncle.png","assets/image/g2.png",
      "assets/image/user4.jpg","assets/image/g7.jpg","assets/image/man.png"];
    final text=["where you man?","im coming","ok","Don't frgt abt exam","ok","broo","can we meet?","sure","im waiting","i'll be there","yeaaa"];
    final icon=[];
    //2
    return Scaffold(
      body:
         ListView.builder(
           shrinkWrap: true,
           itemBuilder: (context, index)
           {
           return ListTile(
             leading: Image(image: AssetImage("${image[index]}")),
             title: Text("${names[index]}",style: TextStyle(fontSize: 20),),
             subtitle: Text("${text[index]}"),
             trailing:(index%2==0)?
             Column(
               children: [
                 Text("1$index:10am"),
                 Icon(Icons.looks_one_rounded ,color: Colors.green,),
               ],
             ):SizedBox(),
             onTap: (){},
           );
         },
         itemCount: names.length,
         ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
           Card(
             color: Colors.teal[700],
             child: IconButton(onPressed: () {

             }, icon: Icon(Icons.chat,color: Colors.white,size: 30,)),
           )
      ],),
    );
  }
}
