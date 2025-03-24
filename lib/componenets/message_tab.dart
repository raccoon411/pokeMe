import 'package:dokeme/templates/customInput_template.dart';
import 'package:dokeme/templates/userItem_template.dart';
import 'package:flutter/material.dart';

class MessageTab extends StatefulWidget {
  const MessageTab({ Key? key }) : super(key: key);

  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  @override
  Widget build(BuildContext context) {
    return 
       Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Histories", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, height:1.4),))),
                  IconButton(onPressed: (){}, icon: Icon(Icons.logout))
            ],
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: 
                    CustomInputTemplate(controller: new TextEditingController(), prefixIcon:Icon(Icons.search, color: Colors.grey,), hint: "Search", bgColor: Colors.grey.withAlpha(40), )
                  )
                )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(),),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "online",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(), status: "busy",),
                  UserItemTemplate(name:"Cezary Banach",joinedAt: DateTime.now(),),
                  
                ],
              ),
            )
          )
        ],
      );
  }
}