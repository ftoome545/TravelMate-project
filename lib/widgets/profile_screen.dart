import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/about_you_profile_section.dart';
import 'package:travel_mate/widgets/email_identification.dart';
import 'package:travel_mate/widgets/general_information_screen.dart';
import 'package:travel_mate/widgets/languages_and_activites_choose.dart';
import 'package:travel_mate/widgets/profile_screen_user_avatar.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? currency = "";
  void _showCurrencyDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setStateDialog) {
          return AlertDialog(
            title: const Text('Currency', style: AppStyles.styleMedium20),
            content: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 98),
              child: Column(
                children: ['USD', 'SAR'].map((currencyType) {
                  return Expanded(
                    child: RadioListTile(
                      fillColor:
                          WidgetStateProperty.all(const Color(0xff1C82AA)),
                      title: Text(
                        currencyType,
                        style: AppStyles.styleMedium16
                            .copyWith(color: const Color(0xffA2BDC2)),
                      ),
                      value: currencyType,
                      groupValue: currency,
                      onChanged: (value) {
                        setStateDialog(() {
                          currency = value!;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            actions: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xffDFEAF1))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: AppStyles.styleRegular16
                      .copyWith(color: const Color(0xff4A6670)),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4A6670),
                ),
                onPressed: () {
                  setState(() {
                    currency;
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'Save',
                  style: AppStyles.styleRegular16.copyWith(color: Colors.white),
                ),
              ),
            ],
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileScreenUserAvatar(),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles('Profile Settings'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  title: 'General information',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const GeneralInformationScreen()));
                  },
                )),
            const SizedBox(
              height: 2,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EmailIdentification()));
                  },
                  title: 'Email identification',
                )),
            const SizedBox(
              height: 2,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  onTap: () {},
                  title: 'Subscription ',
                )),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles('Guide host'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
              height: 49,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Currency',
                      style: AppStyles.styleMedium16.copyWith(
                        color: const Color(0xffA2BDC2),
                      ),
                    ),
                    Row(
                      children: [
                        if (currency != null)
                          Text(
                            '$currency',
                            style: AppStyles.styleRegular12.copyWith(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        GestureDetector(
                            onTap: () {
                              _showCurrencyDialog();
                            },
                            child:
                                SvgPicture.asset(Assets.imagesArrowRightIcon)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AboutYouProfileSection()));
                  },
                  title: 'About you',
                )),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles('Notifications'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  onTap: () {},
                  title: 'Notification settings',
                )),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles('General'),
            const SizedBox(
              height: 10,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  onTap: () {},
                  title: 'Privacy policy',
                )),
            const SizedBox(
              height: 2,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  onTap: () {},
                  title: 'Terms of service',
                )),
            const SizedBox(
              height: 2,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  onTap: () {},
                  title: 'Delete account',
                )),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log out',
                    style: AppStyles.styleSemiBold18.copyWith(
                      color: const Color(0xffFF3B30),
                    ),
                  )),
            ),
            const SizedBox(
              height: 24,
            ),
            const Center(
              child: Text(
                'Version 1.0.0',
                style: AppStyles.styleRegular12,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  Padding filterSubTitles(String filterSubTitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Text(
        filterSubTitle,
        style: AppStyles.styleMedium16.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
