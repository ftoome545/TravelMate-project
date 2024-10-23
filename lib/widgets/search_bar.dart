import 'package:flutter/material.dart';
import 'package:travel_mate/utils/app_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: const Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: const BorderSide(width: 1, color: Color(0xff7AA0A7)))),
      child: const Expanded(
        child: Row(
          children: [
            Expanded(
              child: Icon(
                Icons.search,
                color: Color(0xff7AA0A7),
              ),
            ),
            Expanded(
              child: Text(
                'Search...',
                style: AppStyles.styleRegular16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
