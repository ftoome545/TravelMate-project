import 'package:flutter/material.dart';

class WhiteContainerFilterpage extends StatelessWidget {
  const WhiteContainerFilterpage({
    super.key,
    required this.child,
    required this.height,
  });

  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
      ),
      child: child,
    );
  }
}
