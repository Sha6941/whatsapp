import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              PopupMenuButton(
                  offset: Offset(0,35),
                  itemBuilder: (context) =>
                [PopupMenuItem(child: Text("Status privacy")
                )
             ] )
            ],
          ),
            Container(
              height: 100,

              child: ListView.separated(separatorBuilder: (context, index) {
                return SizedBox(width: 10,);
              },
                scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context,index)
                {
                  final image=["assets/image/useradd.jpg","assets/image/g5.png","assets/image/men.png","assets/image/g3.png","assets/image/uncle.png","assets/image/g2.png",
                    "assets/image/user4.jpg","assets/image/g7.jpg","assets/image/man.png"];
                  final names=["My status","Rose","Bosco","Teena","Uncle","Daisy"];
               return Column(
                 children: [
                   CircleAvatar(radius: 35,backgroundImage: AssetImage("${image[index]}"),),
                   Text("${names[index]}")
                 ],
               );
                }
                ),
            ),
          Divider(),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Channels",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),

            PopupMenuButton(
              offset: Offset(0,35),
              icon: Icon(Icons.add),
              itemBuilder: (context) =>
              [PopupMenuItem(child: Text("Create channel")
              ),
                PopupMenuItem(child: Text("Find channels"))
              ],
            )
          ],),
          ListTile(
            leading: Image.asset("assets/image/whatsapp.webp"),

            title: Text("Whatsapp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            onTap: (){},
            subtitle:Text("Scroll less, find more Our new Search By Date feature is the antidote scrolling through your.."),
            ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Find channels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 160),
                child: TextButton(
                    onPressed: () {

                }, child: Text("See all ",style: TextStyle(color: Colors.green,fontSize: 15),)

                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(right: 10),
               child: Icon((Icons.arrow_forward_ios),size: 20,color: Colors.green,),
             )
          ],),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            height: 200,
            child: ListView.separated(separatorBuilder:
              (context, index) {
                return SizedBox(width: 15,);
              },
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index)
              {
                final images=["assets/image/netflix.png","assets/image/TOI.webp","assets/image/barca.jpg","assets/image/CNN.png","assets/image/madrid.jpg"];
                final name=["Netflix","Times of India","FC Barcelona","CNN","Real Madrid C.F"];
                return  Column(
                  children: [
                    Container(
                      height: 170,
                      width: 150,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius:BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          Card(
                            child:
                            CircleAvatar(radius: 35,backgroundImage: AssetImage("${images[index]}"),),
                         ),
                          Text("${name[index]}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Builder(
                            builder: (context) {
                              return ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor:  Colors.green[50]),
                              onPressed: () {
                              },child: Text("Follow",style: TextStyle(color: Colors.teal[700]),));
                            }
                          )
                        ],
                      ),
                    ),
                  ],
                );

              }
              ,),
          ),

        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Card(
            elevation: 4,
            color: Colors.green[50],
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.edit,color: Colors.teal[800],size: 20,)
            ),
          ),
        ),
          Container(
            child: Card(
              color: Colors.teal[800],
              child: IconButton(onPressed: () {

              }, icon: Icon(Icons.camera_alt,color:Colors.white,size: 30,)),

            ),
          )
      ],),
    );
  }
}
