import 'package:practical_google_maps_example/core/styling/app_assets.dart';
import 'package:practical_google_maps_example/core/styling/app_colors.dart';
import 'package:practical_google_maps_example/core/styling/app_styles.dart';
import 'package:practical_google_maps_example/core/widgets/custom_text_field.dart';
import 'package:practical_google_maps_example/core/widgets/primay_button_widget.dart';
import 'package:practical_google_maps_example/core/widgets/spacing_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController username;
  late TextEditingController password;
  late TextEditingController confirmPassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    username = TextEditingController();
    password = TextEditingController();
    email = TextEditingController();
    confirmPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightSpace(28),
                  SizedBox(
                    width: 335.w,
                    child: Text(
                      "Create an account",
                      style: AppStyles.primaryHeadLinesStyle,
                    ),
                  ),
                  const HeightSpace(8),
                  SizedBox(
                    width: 335.w,
                    child: Text(
                      "Let’s create your account.",
                      style: AppStyles.grey12MediumStyle,
                    ),
                  ),
                  const HeightSpace(20),
                  Center(
                    child: Image.asset(
                      AppAssets.logo,
                      width: 190.w,
                      height: 190.w,
                    ),
                  ),
                  const HeightSpace(32),
                  Text("User Name", style: AppStyles.black16w500Style),
                  const HeightSpace(8),
                  CustomTextField(
                    controller: username,
                    hintText: "Enter Your User Name",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your User Name";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(16),
                  Text("Email", style: AppStyles.black16w500Style),
                  CustomTextField(
                    controller: email,
                    hintText: "Enter Your Email",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Email";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(16),
                  Text("Password", style: AppStyles.black16w500Style),
                  const HeightSpace(8),
                  CustomTextField(
                    hintText: "Enter Your Password",
                    controller: password,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 characters";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(16),
                  Text("Confirm Password", style: AppStyles.black16w500Style),
                  const HeightSpace(8),
                  CustomTextField(
                    hintText: "Enter Your Password",
                    controller: confirmPassword,
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Password";
                      }
                      if (value.length < 8) {
                        return "Password must be at least 8 characters";
                      }
                      if (value != password.text) {
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(55),
                  PrimayButtonWidget(
                    buttonText: "Create Account",
                    onPress: () {
                      //    if (formKey.currentState!.validate()) {
                      //   GoRouter.of(context).pushNamed(AppRoutes.verifyOtpScreen);
                      //  }
                    },
                  ),
                  const HeightSpace(8),
                  Center(
                    child: InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Do you have account? ",
                          style: AppStyles.black16w500Style
                              .copyWith(color: AppColors.secondaryColor),
                          children: [
                            TextSpan(
                                text: "Login",
                                style: AppStyles.black15BoldStyle)
                          ],
                        ),
                      ),
                    ),
                  ),
                  const HeightSpace(16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
