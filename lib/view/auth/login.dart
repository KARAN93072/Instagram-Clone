import 'package:flutter/material.dart';
import 'package:instagram_clone/const/app_info.dart';
import 'package:instagram_clone/const/color_pallet.dart';
import 'package:instagram_clone/const/spacing.dart';
import 'package:instagram_clone/view/auth/sign_up.dart';
import 'package:instagram_clone/view/widgets/custom_textfield.dart';
import 'package:svg_flutter/svg.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    String hintText;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: Spacing.screenPadding,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(),
              ),

              ///Instagram name logo
              SvgPicture.asset(
                AppInfo.logo,
                color: AppColors.primaryColor,
              ),

              const SizedBox(height: 64),

              ///Email textfield
              CustomTextField(
                controller: emailController,
                hintText: 'Email Address',
                textInputType: TextInputType.none,
                isPass: false,
              ),
              const SizedBox(height: 24),

              ///Password textFild
              CustomTextField(
                controller: passController,
                hintText: 'Password',
                textInputType: TextInputType.none,
                isPass: true,
              ),
              const SizedBox(height: 24),
              FilledButton(onPressed: () {}, child: const Text('Submit')),
              Flexible(
                flex: 2,
                child: Container(),
              ),

              ///Create new account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
