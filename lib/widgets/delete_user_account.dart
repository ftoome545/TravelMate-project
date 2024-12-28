import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class DeleteUserAccount extends StatefulWidget {
  const DeleteUserAccount({super.key});

  @override
  State<DeleteUserAccount> createState() => _DeleteUserAccountState();
}

class _DeleteUserAccountState extends State<DeleteUserAccount> {
  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Color(0xff4A6670),
                        )),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Text(
                            textAlign: TextAlign.center,
                            'Your account has been successfully deleted',
                            style: AppStyles.styleMedium24(context).copyWith(
                                color: Colors.black,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(child: SvgPicture.asset(Assets.imagesCheckIcon)),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
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
        iconTheme: const IconThemeData(color: Color(0xff4A6670)),
        title: Text(
          'Delete Account',
          style: AppStyles.styleMedium20(context),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 161,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  userDeatilsRow(
                      context: context,
                      typeOfData: 'Name:',
                      data: 'Sarah Clear'),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    child: Divider(
                      height: 9,
                      color: Color(0xff7AA0A7),
                    ),
                  ),
                  userDeatilsRow(
                      context: context,
                      typeOfData: 'Email:',
                      data: 'sarah@hotmail.com'),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    child: Divider(
                      height: 9,
                      color: Color(0xff7AA0A7),
                    ),
                  ),
                  userDeatilsRow(
                      context: context,
                      typeOfData: 'Location:',
                      data: 'London'),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19),
                    child: Divider(
                      height: 9,
                      color: Color(0xff7AA0A7),
                    ),
                  ),
                  userDeatilsRow(
                      context: context,
                      typeOfData: 'Account type:',
                      data: 'Tourist'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              textAlign: TextAlign.center,
              "Are you sure you want to delete your account?",
              style: AppStyles.styleMedium20(context)
                  .copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(width: 24),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4A6670),
                    ),
                    onPressed: () {
                      _showConfirmationDialog();
                    },
                    child: Text(
                      'Yes',
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4A6670),
                    ),
                    onPressed: () {},
                    child: Text(
                      'No',
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row userDeatilsRow(
      {required BuildContext context,
      required String typeOfData,
      required String data}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(typeOfData,
            style: AppStyles.styleMedium16(context).copyWith(
                color: const Color(0xff7AA0A7),
                decoration: TextDecoration.none)),
        const SizedBox(
          width: 15,
        ),
        Text(
          data,
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Colors.black, decoration: TextDecoration.none),
        ),
      ],
    );
  }
}
