import 'package:bloc_inc_dec/inc_dec_cubit/inc_dec_cubit.dart';
import 'package:bloc_inc_dec/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              InkWell(
                onTap: () {
                  context.read<IncDecCubit>().incrementCount();
                },
                borderRadius: BorderRadius.circular(35.r),
                child: CircleAvatar(
                  backgroundColor: AppColors.primaryColor1,
                  radius: 40.r,
                  child: Icon(
                    Icons.add,
                    color: AppColors.subColor1,
                    size: 42.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              BlocBuilder<IncDecCubit, IncDecState>(
                buildWhen: (previousCount,currentCount)=>previousCount.count!=currentCount.count,
                builder: (context, state) {
                  return Text(
                    state.count.toString(),
                    style: TextStyle(
                      fontSize: 30.sp,
                    ),
                  );
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(35.r),
                onTap: () {
                  context.read<IncDecCubit>().decrementCount();
                },
                child: CircleAvatar(
                  backgroundColor: AppColors.primaryColor2,
                  radius: 40.r,
                  child: Icon(
                    Icons.remove,
                    color: AppColors.subColor1,
                    size: 42.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
