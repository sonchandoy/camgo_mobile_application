import 'package:flutter/material.dart';
class IconWithShapeWidget extends StatelessWidget {
  const IconWithShapeWidget({Key? key,required this.onTap}) : super(key: key);
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: 50,
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.email_outlined,color: Colors.white,size: 30,),
        ),
      ),
    );
  }
}
