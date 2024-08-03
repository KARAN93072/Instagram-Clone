import 'package:flutter/material.dart';
import 'package:instagram_clone/const/app_info.dart';
import 'package:instagram_clone/const/color_pallet.dart';
import 'package:instagram_clone/const/spacing.dart';
import 'package:instagram_clone/resources/auth_methods.dart';
import 'package:instagram_clone/view/widgets/custom_textfield.dart';
import 'package:svg_flutter/svg.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
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
                controller: nameController,
                hintText: 'Name',
                textInputType: TextInputType.none,
                isPass: false,
              ),
              const SizedBox(height: 24),

              ///Password textFild
              CustomTextField(
                controller: usernameController,
                hintText: 'Username',
                textInputType: TextInputType.none,
                isPass: false,
              ),
              const SizedBox(height: 24),
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
              FilledButton(onPressed: () {
                
              }, child: const Text('Submit')),
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
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
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
