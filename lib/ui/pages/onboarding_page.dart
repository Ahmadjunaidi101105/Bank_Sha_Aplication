import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int curentIndex = 0;
  final CarouselSliderController carouselController =
      CarouselSliderController();

  List<String> titles = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];

  List<String> subtitles = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img__onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img__onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img__onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                height: 331,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    curentIndex = index;
                  });
                },
              ),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 24),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[curentIndex],
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semibold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitles[curentIndex],
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: curentIndex == 2 ? 38 : 50,
                  ),
                  curentIndex == 2
                      ? Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: TextButton(
                                onPressed: () {
                                  // Gunakan animateToPage untuk berpindah halaman
                                  carouselController.animateToPage(
                                    curentIndex + 1,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: purpleColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56),
                                  ),
                                ),
                                child: Text(
                                  'Get Started',
                                  style: whiteTextColor.copyWith(
                                    fontSize: 16,
                                    fontWeight: semibold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 24,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignInPage(),
                                    ),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Text(
                                  'Sign In',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: curentIndex == 0
                                    ? blackColor
                                    : LightBackgroundColor,
                              ),
                            ),
                            Container(
                              height: 12,
                              width: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: curentIndex == 1
                                    ? blackColor
                                    : LightBackgroundColor,
                              ),
                            ),
                            Container(
                              height: 12,
                              width: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: curentIndex == 2
                                    ? blackColor
                                    : LightBackgroundColor,
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 150,
                              height: 50,
                              child: TextButton(
                                onPressed: () {
                                  // Gunakan animateToPage untuk berpindah halaman
                                  carouselController.animateToPage(
                                    curentIndex + 1,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: purpleColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(56),
                                  ),
                                ),
                                child: Text(
                                  'Continue',
                                  style: whiteTextColor.copyWith(
                                    fontSize: 16,
                                    fontWeight: semibold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
