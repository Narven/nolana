import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ActivityBar extends StatelessWidget {
  const ActivityBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: const BoxDecoration(
        color: kActivityBarBackgroundColor,
      ),
      child: Column(
        children: const [
          ActivityBarButton(iconData: Icons.file_open_outlined),
          ActivityBarButton(iconData: Icons.search_off_outlined),
          ActivityBarButton(iconData: Icons.window_outlined),
          Spacer(),
          ActivityBarButton(iconData: Icons.account_circle_outlined),
          ActivityBarButton(iconData: Icons.settings_outlined)
        ],
      ),
    );
  }
}

class ActivityBarButton extends StatelessWidget {
  const ActivityBarButton({
    super.key,
    required this.iconData,
  });

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          iconData,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
