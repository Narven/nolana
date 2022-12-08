import 'package:flutter/material.dart';

import '../../../common_widgets/activity_bar.dart';
import '../../../common_widgets/footer.dart';
import '../../../common_widgets/header.dart';
import '../../../common_widgets/main_area.dart';
import '../../../common_widgets/primary_sidebar.dart';
import '../../../constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: kBackgroundColor,
              ),
              child: Row(
                children: const [
                  ActivityBar(),
                  PrimarySidebar(),
                  Expanded(child: MainArea()),
                ],
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
