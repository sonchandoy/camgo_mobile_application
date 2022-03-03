import 'package:flutter/material.dart';

class ShowTextWidget extends StatelessWidget {
  const ShowTextWidget({Key? key, this.text = "", this.colors = Colors.black, this.fontWeight = FontWeight.normal, this.fontSize = 12.0}) : super(key: key);
  final String? text;
  final Color? colors;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return _buildTextToDisplay(text!,colors!,fontWeight!,fontSize!);
  }

  Text _buildTextToDisplay(String text,Color colors,FontWeight fontWeight,double fontSize) {
    return Text(
      text,
      style: TextStyle(
        color: colors,
        fontWeight: fontWeight,
        fontSize: fontSize
      ),
    );
  }
}
