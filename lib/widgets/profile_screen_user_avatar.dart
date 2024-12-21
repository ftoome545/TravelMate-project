import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class ProfileScreenUserAvatar extends StatelessWidget {
  const ProfileScreenUserAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      // height: double.infinity,
      height: 183,
      child: Stack(
        // alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              Assets.imagesBackGroundImageJeddah,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 183,
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Image.asset(Assets.imagesProfileAvatarImage),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: SizedBox(
                        height: 51,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(color: Colors.white)),
                            ),
                            onPressed: () {},
                            child: Text(
                              'View Profile',
                              style: AppStyles.styleMedium16(context)
                                  .copyWith(color: Colors.white),
                            ))),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: Text(
                      'User Name',
                      style: AppStyles.styleBold20(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
