import 'dart:ffi';

import 'package:flutter/material.dart'; 

class CustomInputTemplate extends StatefulWidget {

  final String type;
  final String label;
  String? hint;
  Icon? prefixIcon;
  Icon? suffixIcon;
  final TextEditingController controller;
  int maxLen;
  int minLen;
  bool isRequired;
  Color bgColor;
  Color borderColor;
  CustomInputTemplate({ super.key, this.type = "text" , required this.controller, this.borderColor = Colors.transparent, this.bgColor = Colors.transparent, this.label = "", this.hint = "Type here", this.prefixIcon, this.suffixIcon , this.maxLen = 500, this.minLen = 0, this.isRequired = false});

  @override
  _CustomInputTemplateState createState() => _CustomInputTemplateState();
}

class _CustomInputTemplateState extends State<CustomInputTemplate> {
  TextInputType? _keyboardType;
  bool _obscureText = false;
  Icon _suffixIcon = Icon(Icons.visibility_off);

  @override
  void initState() {
    super.initState();
    if(widget.type == "password" || widget.type == "pins") {
      _obscureText = true;
      _suffixIcon = Icon(Icons.visibility_outlined);
    }
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
      if(_obscureText) {
        _suffixIcon = Icon(Icons.visibility);
      } else {
        _suffixIcon = Icon(Icons.visibility_off);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    switch(widget.type) {
      case "email":
        _keyboardType = TextInputType.emailAddress;
        break;
      case "password":
        _keyboardType = TextInputType.visiblePassword;
        break;
      case "pins":
        _keyboardType = TextInputType.number;
      default:
        _keyboardType = TextInputType.text;
    }
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.0, horizontal:5.0),
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: widget.borderColor,
          width: 1.0,
        )
      ),
      child: Row(
        children: [
          widget.prefixIcon!= null ? 
          IconButton(onPressed: widget.prefixIcon == null? (){
            _toggleObscureText();
          }:null, icon: widget.prefixIcon!)
          :SizedBox.shrink(),
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              keyboardType: _keyboardType,
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText:widget.hint,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0)
              ),
              validator: (value){
                if(widget.isRequired && value!.isEmpty) {
                  return "This field is required";
                }
                if(value!.length < widget.minLen) {
                  return "This field must be at least ${widget.minLen} characters long";
                }
                if(value!.length > widget.maxLen) {
                  return "This field must be at most ${widget.maxLen} characters long";
                }
                if(widget.type == "email" && !value.contains("@")) {
                  return "This field must be a valid email";
                }
                return null;
              },
            ),
          ),
          widget.suffixIcon!= null || widget.type == "password" || widget.type == "pins"? 
          IconButton(onPressed: widget.suffixIcon == null? (){
            _toggleObscureText();
          }:null, icon: widget.suffixIcon ?? _suffixIcon)
          :SizedBox.shrink()
          ]
      ),
    );
  }
}