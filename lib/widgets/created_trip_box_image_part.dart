import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';

class CreatedTripBoxImagePart extends StatelessWidget {
  const CreatedTripBoxImagePart({
    super.key,
    required this.destination,
  });

  final String destination;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Ensure the image spans full width
      height: double.infinity, // Take full height of the parent
      child: Stack(
        // clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                Assets.imagesBackGroundImageJeddah,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black
                    .withOpacity(0.3), // Semi-transparent black overlay
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10.5,
                  ),
                  Container(
                      height: 26,
                      decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: CircleBorder(
                            side: BorderSide.none,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3.5, vertical: 3.5),
                        child: SvgPicture.asset(
                          Assets.imagesTripSendIcon,
                        ),
                      )),
                  const SizedBox(
                    width: 17.5,
                  ),
                  Text(
                    'Trip to $destination Saudi Arabia',
                    style:
                        AppStyles.styleSemiBold16.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
