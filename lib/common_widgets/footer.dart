import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: Colors.orange.shade800,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              iconSize: 20,
              icon: const Icon(Icons.gite, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              iconSize: 20,
              icon: const Icon(Icons.refresh_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              iconSize: 20,
              icon: const Icon(Icons.error_outline, color: Colors.white),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 20,
              ),
              label: const Text(
                'MacOS (nolana)',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 20),
            const Text('Debug my code', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 20),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.circle_outlined,
                color: Colors.white,
                size: 20,
              ),
              label: const Text(
                'Watch',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.error_outline,
                color: Colors.white,
                size: 20,
              ),
              label: const Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.warning_amber_outlined,
                color: Colors.white,
                size: 20,
              ),
              label: const Text(
                '0',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Spacer(),
            const Text('Ln 33, Col 24', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 20),
            const Text('Spaces: 2', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 20),
            const Text('UTF-8', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 20),
            const Text('LF', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 20),
            const Text('{} Dart', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 20),
            const Text('macOS(darwin)', style: TextStyle(color: Colors.white)),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              iconSize: 20,
              icon: const Icon(Icons.feedback_outlined, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              iconSize: 20,
              icon: const Icon(Icons.notifications_active_outlined,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
