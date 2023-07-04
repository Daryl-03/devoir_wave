import 'package:devoir_wave/utils/app_layout.dart';
import 'package:flutter/material.dart';

/// A widget that displays a home option
/// It's composed of a circular icon and a title
class HomeOptionWidget extends StatelessWidget {
  final Icon icon;
  final String title;
  final Color backgroundColor;
  final Function()? onTap;

  const HomeOptionWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.backgroundColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayWidth = AppLayout.displayWidth(context);
    final displayHeight = AppLayout.displayHeightWithoutAppBar(context);
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          splashColor: backgroundColor.withOpacity(0.5),
          child: Container(
            width: displayWidth * 0.2,
            height: displayHeight * 0.08,
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
            ),
            child: icon,
          ),
        ),
        SizedBox(
          height: displayHeight * 0.01,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
