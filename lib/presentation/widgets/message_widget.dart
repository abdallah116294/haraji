import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haraji/icon.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 150.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.brown.shade100),
      child:  Column(children: [
         Icon(
          Icons.mail,
          size: 90.dg,
          shadows:const [
            Shadow(
                blurRadius: 5.0, color: Colors.white, offset: Offset(1.0, 1.0))
          ],
        ),
        Text(
          text,
          style:  TextStyle(fontSize: 18.sp, color: Colors.black, shadows:const  [
            Shadow(
                blurRadius: 5.0, color: Colors.white, offset: Offset(1.0, 1.0))
          ]),
        )
      ]),
    );
  }
}
