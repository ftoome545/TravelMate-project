import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class PlanTripChooseDate extends StatefulWidget {
  const PlanTripChooseDate({
    super.key,
  });

  @override
  State<PlanTripChooseDate> createState() => _PlanTripChooseDateState();
}

class _PlanTripChooseDateState extends State<PlanTripChooseDate> {
  DateTime dateTime = DateTime(2024, 9, 28);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        DateTime? newTime = await showDatePicker(
            context: context,
            initialDate: dateTime,
            firstDate: DateTime(2000),
            lastDate: DateTime(2025));
        if (newTime == null) return;
        setState(() {
          dateTime = newTime;
        });
      },
      child: Row(
        children: [
          const SizedBox(
            width: 24,
          ),
          Text(
            '${dateTime.year}/${dateTime.day}/${dateTime.month}',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xff7AA0A7)),
          ),
        ],
      ),
    );
  }
}
