import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haraji/presentation/cubit/get_message_cubit.dart';
import 'package:haraji/presentation/screens/message_screen.dart';
import 'package:haraji/presentation/widgets/message_widget.dart';
import 'package:haraji/injection_container.dart' as di;

class HomScreen extends StatefulWidget {
  const HomScreen({super.key});

  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen> {
  List<String> message = [
    'الجواب الاول',
    'الجواب الثاني',
    'الجواب الثالث',
    'الجواب الرابع',
    'الجواب الخامس',
    'الجواب السادس',
    'الجواب السابع',
    'الجواب الثامن',

  ];
  @override
  void initState() {
    // TODO: implement initState
    // BlocProvider.of<di.sl>(context)
    di.sl<GetMessageCubit>().getMessage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(index: 0)));
                  },
                  child: MessageWidget(text: message[0])),
              InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(index: 1)));
              },child: MessageWidget(text: message[1]))
            ],
          ),
           SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(index: 2))),child: MessageWidget(text: message[2])),
              InkWell(onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(index: 3))),child: MessageWidget(text: message[3]))
            ],
          ),
           SizedBox(
            height: 10.h
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(index: 4))),child: MessageWidget(text: message[4])),
              InkWell(onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(index: 5))),child: MessageWidget(text: message[5]))
            ],
          ),
            SizedBox(
            height: 10.h,
          ),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(index: 6))),child: MessageWidget(text: message[6])),
              InkWell(onTap: () =>   Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(index: 7))),child: MessageWidget(text: message[7]))
            ],
          ),
         
        ]),
      ),
    );
  }
}
