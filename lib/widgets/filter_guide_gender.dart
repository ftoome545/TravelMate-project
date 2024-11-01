import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class FilterGuideGender extends StatefulWidget {
  FilterGuideGender({
    super.key,
    required this.selectedGender,
  });

  String? selectedGender;

  @override
  State<FilterGuideGender> createState() => _FilterGuideGenderState();
}

class _FilterGuideGenderState extends State<FilterGuideGender> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: ['Male', 'Female'].map((gender) {
        return Expanded(
          child: RadioListTile(
            fillColor: WidgetStateProperty.all(const Color(0xff1C82AA)),
            title: Text(
              gender,
              style: AppStyles.styleMedium16
                  .copyWith(color: const Color(0xffA2BDC2)),
            ),
            value: gender,
            groupValue: widget.selectedGender,
            onChanged: (value) {
              setState(() {
                widget.selectedGender = value!;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
