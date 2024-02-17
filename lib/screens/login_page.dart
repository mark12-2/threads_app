import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:threads_app/components/custom_text_field.dart';
import 'package:threads_app/screens/homepage.dart';
import 'package:threads_app/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.instagramLogo),
            const SizedBox(height: 40),
            CustomTextField(
              labelText: 'Username',
              controller: usernameController,
            ),
            const SizedBox(height: 15),
            CustomTextField(
              labelText: 'Password',
              controller: passwordController,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
                  // Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: CustomColors.blue,
                ),
                child: Text(
                  'Log in',
                  style: TextStyles.titleText.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
