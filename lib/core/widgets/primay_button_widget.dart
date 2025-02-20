import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practical_google_maps_example/core/styling/app_colors.dart';
import 'package:practical_google_maps_example/core/widgets/spacing_widgets.dart';

class PrimayButtonWidget extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final double? width;
  final double? height;
  final double? bordersRadius;
  final Color? textColor;
  final double? fontSize;
  final Widget? icon;
  final Widget? trailingIcon;
  final void Function()? onPress;
  final bool isLoading;
  const PrimayButtonWidget(
      {super.key,
      this.buttonText,
      this.buttonColor,
      this.width,
      this.height,
      this.bordersRadius,
      this.fontSize,
      this.textColor,
      this.icon,
      this.trailingIcon,
      this.isLoading = false,
      this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null ? icon! : const SizedBox.shrink(),
          icon != null ? const WidthSpace(8) : const SizedBox.shrink(),
          isLoading
              ? SizedBox(
                  width: 30.sp,
                  height: 30.sp,
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                )
              : Text(
                  buttonText ?? "",
                  style: TextStyle(
                      color: textColor ?? Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: fontSize ?? 16.sp),
                ),
          trailingIcon != null ? const WidthSpace(8) : const SizedBox.shrink(),
          trailingIcon != null ? trailingIcon! : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
