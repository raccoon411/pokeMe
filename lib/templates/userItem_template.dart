import 'package:flutter/material.dart';

class UserItemTemplate extends StatefulWidget {
  String? imageUrl;
  String? status;
  final String name;
  final DateTime joinedAt;
  UserItemTemplate({ Key? key, this.imageUrl = "assets/avatar/1.png", this.status = "offline" , required this.name, required this.joinedAt}) : super(key: key);

  @override
  _UserItemTemplateState createState() => _UserItemTemplateState();
}

class _UserItemTemplateState extends State<UserItemTemplate> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      splashColor: Colors.blue.withAlpha(50), 
      onTap: () {
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, ),
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            statusBuid(widget.status),
            Container(
              margin: EdgeInsets.only(right: 15),
              child: Image(image: AssetImage("assets/avatar/1.png"), height: 48, width: 48,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cenary Banach"),
                buildJionedDate(widget.joinedAt)
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget statusBuid(String? status){
    final Color _statusColor;
    switch(status){
      case "online":
        _statusColor = Colors.green;
        break;
      case "offline":
        _statusColor = Colors.grey;
        break;
      case "busy":
        _statusColor = Colors.red;
        break;
      default:
        _statusColor = Colors.grey;
    }
    return Container(
              height: 10,
              width: 10,
              margin: EdgeInsets.only(right: 5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _statusColor
              ),
            );
  }

  Widget buildJionedDate(DateTime joinedAt){
    return Text("Joined at ${joinedAt.year}-${joinedAt.month}-${joinedAt.day}");
  }
}