import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffDFEAF1),
        iconTheme: const IconThemeData(color: Color(0xff4A6670)),
        title: Text(
          'Privacy Policy',
          style: AppStyles.styleMedium20(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            filterSubTitles(context, 'TravelMate Privacy policy'),
            const SizedBox(
              height: 12,
            ),
            justOneParagraph(
              context: context,
              theParagraph:
                  "TravelMate is committed to protecting your privacy. This privacy policy explains how we collect, use, and protect any personal information you provide when using our app. The TravelMate app provides guides for tourists visiting Saudi Arabia, helping them explore cities and experience local culture.",
            ),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles(context, 'Data Collection'),
            const SizedBox(
              height: 12,
            ),
            theParagraphWithBulletPoints(
                context: context,
                theParagraph:
                    "We may collect the following types of information:"),
            theBulletPoint(
                context: context,
                title: "Personal Information: ",
                subTitle:
                    "Name, email address, phone number, and location data when you register or use the app’s features.",
                color: Colors.black),
            theBulletPoint(
                context: context,
                title: "Usage Data: ",
                subTitle:
                    "Information about how you use the app, including your interactions, preferences, and selected guides or locations.",
                color: Colors.black),
            theBulletPoint(
                context: context,
                title: "Device Information: ",
                subTitle:
                    "Data about the device you use, such as the model, operating system, and unique device identifiers.",
                color: Colors.black),
            const SizedBox(
              height: 12,
            ),
            theParagraphWithBulletPoints(
                context: context,
                theParagraph:
                    "The data collected is used to improve our services, facilitate connections between tourists and guides, and enhance your user experience."),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles(context, 'Advertising'),
            const SizedBox(
              height: 12,
            ),
            justOneParagraph(
              context: context,
              theParagraph:
                  "TravelMate may display advertisements within the app. These ads may be based on your preferences and usage patterns. Advertisers may use cookies or other tracking technologies to display relevant ads to you. However, your personal information will not be shared with advertisers without your explicit consent.",
            ),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles(context, 'Third-party services'),
            const SizedBox(
              height: 12,
            ),
            justOneParagraph(
              context: context,
              theParagraph:
                  "TravelMate integrates with third-party services to enhance functionality. These services may include payment processors, mapping providers, and analytics platforms. While we ensure these partners comply with data protection regulations, their practices are governed by their respective privacy policies. We recommend reviewing their policies to understand how your information is handled.",
            ),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles(context, 'Cookies'),
            const SizedBox(
              height: 12,
            ),
            theParagraphWithBulletPoints(
                context: context,
                theParagraph:
                    "Cookies are small data files stored on your device to enhance your app experience. TravelMate uses cookies to:"),
            theBulletPoint(
                context: context,
                title: "",
                subTitle: "Remember your preferences.",
                color: Colors.black),
            theBulletPoint(
                context: context,
                title: "",
                subTitle: "Provide personalized content.",
                color: Colors.black),
            theBulletPoint(
                context: context,
                title: "",
                subTitle: "Analyze app performance and usage.",
                color: Colors.black),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles(context, 'changes to this policy '),
            const SizedBox(
              height: 12,
            ),
            justOneParagraph(
              context: context,
              theParagraph:
                  "TravelMate reserves the right to update this privacy policy at any time. Changes will be communicated through the app or via email. We encourage you to review the policy periodically to stay informed about how we protect your information.",
            ),
            const SizedBox(
              height: 24,
            ),
            filterSubTitles(context, 'contact us'),
            const SizedBox(
              height: 12,
            ),
            theParagraphWithBulletPoints(
                context: context,
                theParagraph:
                    "If you have any questions or concerns about this privacy policy or how your data is handled, please contact us:"),
            theBulletPoint(
                context: context,
                title: "Email: ",
                subTitle: "support@travelmateapp.com",
                color: Colors.blue),
            theBulletPoint(
                context: context,
                title: "Phone: ",
                subTitle: "+966 123 456 789",
                color: Colors.black),
            const SizedBox(
              height: 24,
            ),
            theParagraphWithBulletPoints(
                context: context,
                theParagraph:
                    "Thank you for using TravelMate. We are dedicated to providing you with a secure and enjoyable experience."),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Last updated: ",
                  style: AppStyles.styleRegular20(context).copyWith(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "Tuesday, September 10, 2024",
                  style: AppStyles.styleBold20(context).copyWith(
                    color: Colors.black,
                  ),
                ),
              ])),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  Column theParagraphWithBulletPoints(
      {required BuildContext context, required String theParagraph}) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  text: theParagraph,
                  style: AppStyles.styleMedium20(context).copyWith(
                    // color: const Color(0xffA2BDC2),
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget theBulletPoint(
      {required BuildContext context,
      required String title,
      required String subTitle,
      required Color color}) {
    return Row(
      children: [
        const SizedBox(
          width: 32,
        ),
        const Icon(
          Icons.circle,
          color: Colors.black,
          size: 8,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: RichText(
              text: TextSpan(children: [
            TextSpan(
              text: title,
              style: AppStyles.styleBold20(context).copyWith(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: subTitle,
              style: AppStyles.styleMedium20(context).copyWith(
                color: color,
              ),
            ),
          ])),
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }

  Padding justOneParagraph({
    required BuildContext context,
    required String theParagraph,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: theParagraph,
                    style: AppStyles.styleMedium20(context).copyWith(
                      // color: const Color(0xffA2BDC2),
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget paragraphWithBulletPoints(
  //     {required BuildContext context,
  //     required String firstContent,
  //     required secondContent}) {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 24),
  //     child: Column(
  //       children: [
  //         Row(
  //           children: [
  //             Expanded(
  //               child: RichText(
  //                 text: TextSpan(
  //                   text: firstContent,
  //                   style: AppStyles.styleMedium20(context).copyWith(
  //                     // color: const Color(0xffA2BDC2),
  //                     color: Colors.black,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //         const SizedBox(
  //           height: 12,
  //         ),
  //         Row(
  //           children: [
  //             Expanded(
  //               child: RichText(
  //                 text: TextSpan(
  //                   text: secondContent,
  //                   style: AppStyles.styleMedium20(context).copyWith(
  //                     // color: const Color(0xffA2BDC2),
  //                     color: Colors.black,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Padding filterSubTitles(BuildContext context, String filterSubTitle) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Text(
        filterSubTitle,
        style: AppStyles.styleBold20(context).copyWith(
          color: const Color(0xff4A6670),
        ),
      ),
    );
  }
}
