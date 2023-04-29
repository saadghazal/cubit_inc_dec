import 'package:bloc_inc_dec/inc_dec_cubit/inc_dec_cubit.dart';
import 'package:bloc_inc_dec/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, _) {
        return BlocProvider<IncDecCubit>(
          create: (context) => IncDecCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',

            theme: ThemeData(
              fontFamily: 'Ubuntu',
              primarySwatch: Colors.blue,
            ),
            home:const MainScreen(),
          ),
        );
      },
      designSize: const Size(390, 844),
    );
  }
}
