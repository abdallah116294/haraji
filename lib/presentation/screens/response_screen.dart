import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haraji/injection_container.dart' as di;
import 'package:haraji/presentation/cubit/get_message_cubit.dart';

class ResponseScreen extends StatefulWidget {
  ResponseScreen({super.key, required this.index});
  int index;

  @override
  State<ResponseScreen> createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => di.sl<GetMessageCubit>()..getMessage(),
        child: BlocBuilder<GetMessageCubit, GetMessageState>(
            builder: (context, state) {
          if (state is GetMessageLoadingState) {
            return const Center(
              child: Text('Loading'),
            );
          } else if (state is GetMessageLoadedstate) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(30.h),
                    child: Text(state.messageEntity[widget.index].response.toString(),style: TextStyle(fontSize: 32.sp, color: Colors.brown.shade200, shadows: const [
                            Shadow(
                                blurRadius: 5.0,
                                color: Colors.white,
                                offset: Offset(1.0, 1.0))
                          ]
                          ),),
                  ),
                  
                ],
              ),
            );
          }
          return const Center(
            child: Text("error"),
          );
        }),
      ),
    );
  }
}
