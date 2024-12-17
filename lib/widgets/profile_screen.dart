import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/general_information_screen.dart';
import 'package:travel_mate/widgets/languages_and_activites_choose.dart';
import 'package:travel_mate/widgets/profile_screen_user_avatar.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                  onTap: () {},
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
                child: LanguagesAndActivitesChoose(
                  onTap: () {},
                  title: 'Currency',
                )),
            const SizedBox(
              height: 2,
            ),
            WhiteContainerFilterpage(
                height: 49,
                child: LanguagesAndActivitesChoose(
                  onTap: () {},
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
