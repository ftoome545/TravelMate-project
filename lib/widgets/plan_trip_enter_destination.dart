import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class PlanTripEnterDestination extends StatelessWidget {
  const PlanTripEnterDestination({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 24,
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              hintText: 'Enter Destination',
              hintStyle: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff7AA0A7)),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide.none,
              )),
        )),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
