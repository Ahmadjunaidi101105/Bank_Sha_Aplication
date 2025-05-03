import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatelessWidget {
  const PinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 76,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  obscureText: true,
                  cursorColor: greyColor,
                  obscuringCharacter: '*',
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 66,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  CustomInputBotton(
                    title: '1',
                    onTap: () {},
                  ),
                  CustomInputBotton(
                    title: '2',
                    onTap: () {},
                  ),
                  CustomInputBotton(
                    title: '3',
                    onTap: () {},
                  ),
                  CustomInputBotton(
                    title: '4',
                    onTap: () {},
                  ),
                  CustomInputBotton(
                    title: '5',
                    onTap: () {},
                  ),
                  CustomInputBotton(
                    title: '6',
                    onTap: () {},
                  ),
                  CustomInputBotton(
                    title: '7',
                    onTap: () {},
                  ),
                  CustomInputBotton(
                    title: '8',
                    onTap: () {},
                  ),
                  CustomInputBotton(
                    title: '9',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 60,
                    width: 60,
                  ),
                  CustomInputBotton(
                    title: '0',
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
