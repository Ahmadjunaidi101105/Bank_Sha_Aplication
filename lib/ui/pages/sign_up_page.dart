import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController(text: '');
  final emailController = TextEditingController(text: '');
  final passwordController = TextEditingController(text: '');

  bool validate() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          Container(
            height: 50,
            width: 155,
            margin: const EdgeInsets.only(
              bottom: 100,
              top: 100,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Note Name INput
                CustomFormFilled(
                  title: 'Full Name',
                  controller: nameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                // Note EMail : INput
                CustomFormFilled(
                  title: 'Email Addres',
                  controller: nameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                // Note PASSWORD : INput
                CustomFormFilled(
                  title: 'Password',
                  obscureText: true,
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Continue',
                  onPressed: () {
                    if (validate())
                      Navigator.pushNamed(context, '/sign-up-Set-profile');
                    else {
                      showCustomSnackBar(context, 'semua field harus diisi');
                    }
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Sign In',
            onPressed: () {
              Navigator.popAndPushNamed(context, '/sign-in');
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
