import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  bool _newBookingAlerts = true;
  bool _touristsExploring = true;
  bool _localOffers = false;
  bool _keyUpdates = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDFEAF1),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff4A6670)),
        backgroundColor: Colors.white,
        title: Text(
          "Notification Settings",
          style: AppStyles.styleMedium20(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            WhiteContainerFilterpage(
              height: 72,
              child: _buildToggleRow(
                context: context,
                title: "Get alerts for new booking requests and messages",
                value: _newBookingAlerts,
                onChanged: (value) {
                  _newBookingAlerts = value!;
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            WhiteContainerFilterpage(
              height: 49,
              child: _buildToggleRow(
                context: context,
                title: "Tourists exploring my city",
                value: _touristsExploring,
                onChanged: (value) {
                  _touristsExploring = value!;
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            WhiteContainerFilterpage(
              height: 49,
              child: _buildToggleRow(
                context: context,
                title: "Local offers I receive",
                value: _localOffers,
                onChanged: (value) {
                  _localOffers = value!;
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            WhiteContainerFilterpage(
              height: 72,
              child: _buildToggleRow(
                context: context,
                title: "Key Updates and Promotions from TravelMate",
                value: _keyUpdates,
                onChanged: (value) {
                  _keyUpdates = value!;
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleRow(
      {required BuildContext context,
      required String title,
      required bool value,
      required ValueChanged<bool?> onChanged}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: AppStyles.styleMedium16(context).copyWith(
                color: const Color(0xffA2BDC2),
              ),
              text: title,
            ),
          ),
        ),
        GFToggle(
          onChanged: onChanged,
          value: value,
          enabledThumbColor: const Color(0xff73BAD7),
          enabledTrackColor: const Color(0xffC7E3EF),
          disabledThumbColor: const Color(0xff73BAD7),
          disabledTrackColor: const Color(0xffDADADA),
        ),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
