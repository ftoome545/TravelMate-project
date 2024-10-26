import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class GuideRatingDisplay extends StatelessWidget {
  const GuideRatingDisplay({super.key, required this.guideRating});

  final double guideRating;
  @override
  Widget build(BuildContext context) {
    return StarRating(
      rating: guideRating,
      starCount: 5,
      size: 15,
      color: const Color(0xffF38536),
      borderColor: Colors.grey,
    );
  }
}
