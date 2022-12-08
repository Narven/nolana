import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'debug_toolbar.dart';

class PrimarySidebar extends StatelessWidget {
  const PrimarySidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: const BoxDecoration(
        color: kPrimarySidebarBackgroundColor,
      ),
      child: Column(
        children: const [
          DebugToolbar(),
          PrimarySidebarPanel(title: 'Variables'),
          PrimarySidebarPanel(title: 'Watch'),
          PrimarySidebarPanel(title: 'Call Stack'),
          PrimarySidebarPanel(title: 'Breakpoints'),
        ],
      ),
    );
  }
}

class PrimarySidebarPanel extends StatelessWidget {
  const PrimarySidebarPanel({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              Text(
                title.toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Divider(
            color: Colors.white,
            thickness: 0.2,
          ),
        ],
      ),
    );
  }
}
