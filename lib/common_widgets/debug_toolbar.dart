import 'package:flutter/material.dart';

class DebugToolbar extends StatelessWidget {
  const DebugToolbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DebugToolbarButton(
          iconData: Icons.pause_outlined,
          color: Colors.blue.shade100,
        ),
        DebugToolbarButton(
          iconData: Icons.next_plan_outlined,
          color: Colors.blue.shade100,
        ),
        DebugToolbarButton(
          iconData: Icons.arrow_drop_down,
          color: Colors.blue.shade100,
        ),
        DebugToolbarButton(
          iconData: Icons.arrow_drop_down,
          color: Colors.blue.shade100,
        ),
        const DebugToolbarButton(
          iconData: Icons.flash_on,
          color: Colors.orange,
        ),
        const DebugToolbarButton(
          iconData: Icons.refresh_outlined,
          color: Colors.orange,
        ),
        const DebugToolbarButton(
          iconData: Icons.stop_outlined,
          color: Colors.red,
        ),
      ],
    );
  }
}

class DebugToolbarButton extends StatelessWidget {
  const DebugToolbarButton({
    super.key,
    required this.iconData,
    required this.color,
  });

  final IconData iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Icon(
        iconData,
        size: 20,
        color: color,
      ),
    );
  }
}
