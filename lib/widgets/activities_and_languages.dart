import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class ActivitiesAndLanguagesDialog extends StatefulWidget {
  const ActivitiesAndLanguagesDialog({
    super.key,
    required this.activities,
  });

  final Map<String, bool> activities;

  @override
  State<ActivitiesAndLanguagesDialog> createState() =>
      _ActivitiesAndLanguagesDialogState();
}

class _ActivitiesAndLanguagesDialogState
    extends State<ActivitiesAndLanguagesDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text("Activities", style: AppStyles.styleMedium20),
            const SizedBox(height: 10),

            // List of checkboxes
            ...widget.activities.keys.map((String activity) {
              return CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text(activity),
                value: widget.activities[activity],
                onChanged: (bool? value) {
                  setState(() {
                    widget.activities[activity] = value ?? false;
                  });
                },
                activeColor: const Color(0xff4A6670), // Checkbox fill color
              );
            }).toList(),

            const SizedBox(height: 20),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4A6670),
                  ),
                  onPressed: () {
                    print(widget.activities); // Debugging: Print selected items
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Save',
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
