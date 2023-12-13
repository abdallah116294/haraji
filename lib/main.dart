import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haraji/presentation/cubit/get_message_cubit.dart';
import 'package:haraji/presentation/screens/splash_screen.dart';
import 'injection_container.dart' as di;

Future<void> main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => di.sl<GetMessageCubit>())
        ],
        child: ScreenUtilInit(
            designSize:const  Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return const  MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Directionality(
                    textDirection: TextDirection.rtl, child: SplashScreen()),
              );
            }));
  }
}
