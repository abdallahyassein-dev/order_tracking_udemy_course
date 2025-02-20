import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:practical_google_maps_example/core/styling/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  final double? width;
  final double? height;

  const LoadingWidget({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? MediaQuery.of(context).size.height,
      child: Center(
        child: SizedBox(
          child: CircularProgressIndicator(
            color: AppColors.primaryColor,
          ),
          width: 50.w,
          height: 50.w,
        ),
      ),
    );
  }
}
