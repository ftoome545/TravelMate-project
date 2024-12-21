import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_mate/utils/app_images.dart';
import 'package:travel_mate/utils/app_styles.dart';
import 'package:travel_mate/widgets/white_container_filter_page.dart';

class GeneralInfoSections extends StatefulWidget {
  const GeneralInfoSections({
    super.key,
    required this.variableName,
    required this.functionName,
    required this.title,
  });

  final String variableName;
  final VoidCallback functionName;
  final String title;

  @override
  State<GeneralInfoSections> createState() => _GeneralInfoSectionsState();
}

class _GeneralInfoSectionsState extends State<GeneralInfoSections> {
  @override
  Widget build(BuildContext context) {
    return WhiteContainerFilterpage(
        height: 49,
        child: ListTile(
          leading: widget.variableName.isNotEmpty
              ? Icon(
                  Icons.check_circle,
                  color: Colors.green.shade700,
                )
              : null,
          title: Text(
            widget.title,
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xffA2BDC2),
            ),
          ),
          trailing: SvgPicture.asset(Assets.imagesArrowRightIcon),
          onTap: () {
            widget.functionName();
          },
        ));
  }
}
