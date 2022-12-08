import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/constants.dart';
import '../features/window_state/data/window_state.dart';

class Header extends ConsumerWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final windowStateNotifier = ref.read(windowStateProvider.notifier);
    final windowState = ref.watch(windowStateProvider);

    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: kHeaderBackgroundColor,
      ),
      child: Row(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 600,
              decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_outlined,
                  size: 20,
                  color: Colors.white,
                ),
                label: const Text(
                  'nolana',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              windowStateNotifier.togglePrimarySidebar();
            },
            icon: const Icon(
              size: 20,
              Icons.align_horizontal_left,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              windowStateNotifier.toggleFooter();
            },
            icon: const Icon(
              size: 20,
              Icons.align_vertical_bottom,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              debugPrint('Toggle activity bar');
              windowStateNotifier.toggleActivityBar();
            },
            icon: const Icon(
              size: 20,
              Icons.align_horizontal_center,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
