import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:travel_mate/model/created_trips_model.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/created_trip_box_image_part.dart';

class CreatedTripsBox extends StatelessWidget {
  const CreatedTripsBox({
    super.key,
    required this.createdTripsModel,
  });

  final CreatedTripsModel createdTripsModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 38),
      height: 228,
      decoration: ShapeDecoration(
          color: const Color(0xffDFEAF1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      child: Column(
        children: [
          Expanded(
              child: CreatedTripBoxImagePart(
            destination: createdTripsModel.destination,
          )),
          const SizedBox(
            height: 9,
          ),
          Row(
            children: [
              const SizedBox(
                width: 11.27,
              ),
              SvgPicture.asset(Assets.imagesCalendarIcon),
              const SizedBox(
                width: 16,
              ),
              Text(
                '${DateFormat('yyyy-MM-dd').format(createdTripsModel.fromDate)} To ${DateFormat('yyyy-MM-dd').format(createdTripsModel.toDate)}',
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(Assets.imagesDeleteIcon),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Divider(
              height: 10,
              color: Color(0xff7AA0A7),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 24,
              ),
              Text(
                'Group size:',
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: const Color(0xff7AA0A7)),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                createdTripsModel.groupSize,
                style: AppStyles.styleMedium16(context)
                    .copyWith(color: const Color(0xff000000)),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
