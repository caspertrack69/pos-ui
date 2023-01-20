import 'package:flutter/material.dart';
import 'package:pos_ui/constants.dart';
import 'package:pos_ui/core.dart';
import 'package:kartal/kartal.dart';
import 'package:pos_ui/widget/customElevatedButton.dart';
import 'package:pos_ui/widget/customTextField.dart';
import 'package:pos_ui/widget/appText.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
      height: context.height * 1,
      width: context.width * 1,
      child: SingleChildScrollView(
        child: Column(
          children: [
            context.emptySizedHeightBoxLow3x,
            topImage(context),
            context.emptySizedHeightBoxLow3x,
            topText(context),
            context.emptySizedHeightBoxLow3x,
            CustomTextField(
              controller: firstNameController,
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.firstName,
              prefixIcon: const Icon(
                Icons.person,
                color: kLightBlue,
              ),
            ),
            context.emptySizedHeightBoxLow,
            CustomTextField(
              controller: lastNameController,
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.lastName,
              prefixIcon: const Icon(
                Icons.person,
                color: kLightBlue,
              ),
            ),
            context.emptySizedHeightBoxLow,
            CustomTextField(
              controller: emailController,
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.email,
              prefixIcon: const Icon(
                Icons.email,
                color: kLightBlue,
              ),
            ),
            context.emptySizedHeightBoxLow,
            CustomTextField(
              controller: passwordController,
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.password,
              prefixIcon: const Icon(
                Icons.lock,
                color: kLightBlue,
              ),
              suffixIcon: const Icon(Icons.remove_red_eye),
            ),
            context.emptySizedHeightBoxLow,
            CustomTextField(
              controller: passwordConfirmationController,
              height: context.height * 0.07,
              width: context.width * 0.8,
              hinttext: AppText.confirm,
              prefixIcon: const Icon(
                Icons.lock,
                color: kLightBlue,
              ),
              suffixIcon: const Icon(Icons.remove_red_eye),
            ),
            context.emptySizedHeightBoxLow3x,
            CustomElevatedButton(
              child: Text(
                AppText.signUp.toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
              borderRadius: 5,
              color: kLightBlue,
              height: context.height * 0.07,
              width: context.width * 0.8,
              onPressed: () {
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                    builder: (BuildContext context) => LoginView(
                          screenHeight: 0,
                        )));
              },
            ),
            context.emptySizedHeightBoxLow3x,
            bottomText(context),
          ],
        ),
      ),
    );
  }

  SizedBox topImage(BuildContext context) {
    return SizedBox(
      height: context.height * 0.2,
      child: Image.network(
        "https://cdn-icons-png.flaticon.com/128/2102/2102647.png",
        color: kLightBlue,
      ),
    );
  }

  Text topText(BuildContext context) {
    return Text(
      AppText.signUp.toUpperCase(),
      style: context.textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
    );
  }

  SizedBox bottomText(BuildContext context) {
    return SizedBox(
      width: context.width * 0.7,
      height: context.height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            AppText.already,
          ),
          TextButton(
            child: const Text(
              AppText.login,
              style: TextStyle(color: kBlack),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LoginView(
                          screenHeight: 0,
                        )),
              );
            },
          )
        ],
      ),
    );
  }
}
