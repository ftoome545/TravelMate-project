import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class EmailIdentification extends StatefulWidget {
  const EmailIdentification({super.key});

  @override
  State<EmailIdentification> createState() => _EmailIdentificationState();
}

class _EmailIdentificationState extends State<EmailIdentification> {
  String yourEmail = "";
  final TextEditingController _controller = TextEditingController();

  void _showYourEmailDialog() {
    _controller.text = yourEmail;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Email', style: AppStyles.styleMedium20),
          content: TextField(
            cursorColor: const Color(0xff4A6670),
            controller: _controller,
            maxLines: 1,
            decoration: InputDecoration(
                hintText: 'Enter your email here',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff4A6670)))),
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
                  yourEmail = _controller.text;
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color(0xff4A6670),
        ),
        title: const Text(
          'Email Identification',
          style: AppStyles.styleMedium20,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          WhiteContainerFilterpage(
            height: 49,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email',
                    style: AppStyles.styleMedium16.copyWith(
                      color: const Color(0xffA2BDC2),
                    ),
                  ),
                  Row(
                    children: [
                      if (yourEmail != "")
                        Text(
                          yourEmail,
                          style: AppStyles.styleRegular12.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      GestureDetector(
                          onTap: () {
                            _showYourEmailDialog();
                          },
                          child: SvgPicture.asset(Assets.imagesArrowRightIcon)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
