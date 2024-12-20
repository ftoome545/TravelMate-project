import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

// ignore: must_be_immutable
class HourlyCostDialog extends StatefulWidget {
  HourlyCostDialog({
    super.key,
    required this.yesOrNo,
    required this.costController,
    required this.onSave,
    this.selectedCurrency,
  });
  String? yesOrNo, selectedCurrency;
  final TextEditingController costController;
  final void Function(String cost, String currency) onSave;

  @override
  State<HourlyCostDialog> createState() => _HourlyCostDialogState();
}

class _HourlyCostDialogState extends State<HourlyCostDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Hourly cost', style: AppStyles.styleMedium20),
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 295),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "I'll be your free travel mate",
              style: AppStyles.styleMedium16.copyWith(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: ['Yes', 'No'].map((tourCost) {
                return Expanded(
                  child: RadioListTile(
                    fillColor: WidgetStateProperty.all(const Color(0xff1C82AA)),
                    title: Text(
                      tourCost,
                      style:
                          AppStyles.styleMedium16.copyWith(color: Colors.black),
                    ),
                    value: tourCost,
                    groupValue: widget.yesOrNo,
                    onChanged: (value) {
                      setState(() {
                        widget.yesOrNo = value!;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: widget.selectedCurrency,
                    decoration: const InputDecoration(
                      labelText: 'Currency',
                      labelStyle: TextStyle(color: Color(0xff4A6670)),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff4A6670)),
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(value: 'USD', child: Text('USD')),
                      DropdownMenuItem(value: 'EUR', child: Text('EUR')),
                      DropdownMenuItem(value: 'SAR', child: Text('SAR')),
                      DropdownMenuItem(value: 'GBP', child: Text('GBP')),
                    ],
                    onChanged: widget.yesOrNo == 'No'
                        ? (value) {
                            setState(() {
                              widget.selectedCurrency = value!;
                            });
                          }
                        : null, // Disable dropdown when "No" is selected,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  flex: 3,
                  child: TextField(
                    cursorColor: const Color(0xff4A6670),
                    controller: widget.costController,
                    maxLines: 1,
                    keyboardType: TextInputType.number,
                    enabled: widget.yesOrNo ==
                        'No', // Disable when "Yes" is selected
                    decoration: InputDecoration(
                        hintText: 'Cost',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff4A6670)))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the dialog
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Color(0xff3C586E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3C586E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    // Save the cost and currency only if user has entered cost
                    final cost = widget.costController.text;
                    if (widget.yesOrNo == 'No' && cost.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please enter a cost'),
                        ),
                      );
                      return;
                    }
                    widget.onSave(
                      widget.yesOrNo == 'No'
                          ? cost
                          : '0', // Default to '0' if No
                      widget.selectedCurrency!,
                    );
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
