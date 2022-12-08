import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/constants.dart';
import '../features/window_state/data/window_state.dart';
import 'debug_toolbar.dart';

class PrimarySidebar extends ConsumerWidget {
  const PrimarySidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final windowState = ref.watch(windowStateProvider);

    return windowState.isPrimaryPanelOpen
        ? Container(
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
          )
        : Container();
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
