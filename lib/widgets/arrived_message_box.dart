import 'package:flutter/material.dart';
import 'package:travel_mate/model/arrived_message_box_model.dart';
import 'package:travel_mate/utils/app_styles.dart';

class ArrivedMessageBox extends StatelessWidget {
  const ArrivedMessageBox({
    super.key,
    required this.arrivedMessageBoxModel,
  });

  final ArrivedMessageBoxModel arrivedMessageBoxModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      decoration: const ShapeDecoration(
        color: Color(0xffDFEAF1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      ),
      child: Row(
        children: [
          Container(
              padding: const EdgeInsets.only(top: 27, left: 13, bottom: 27),
              decoration: const ShapeDecoration(
                  shape: CircleBorder(side: BorderSide.none)),
              child: Image.asset(arrivedMessageBoxModel.guideImage)),
          Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 42,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Row(
                    children: [
                      Text(
                        'Booking with ${arrivedMessageBoxModel.guideName}...',
                        style: AppStyles.styleMedium14.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        arrivedMessageBoxModel.date,
                        style: AppStyles.styleLight14
                            .copyWith(color: const Color(0xff9DA4A9)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Text(
                    arrivedMessageBoxModel.message,
                    style: AppStyles.styleLight14
                        .copyWith(color: const Color(0xff9DA4A9)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
