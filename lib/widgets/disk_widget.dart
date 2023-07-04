import 'package:devoir_wave/utils/app_layout.dart';
import 'package:flutter/material.dart';

// a widget that displays a small white disk
class DiskWidget extends StatelessWidget {
  const DiskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayWidth = AppLayout.displayWidth(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: displayWidth * 0.01),
      width: displayWidth * 0.03,
      height: displayWidth * 0.03,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
