import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MainArea extends StatelessWidget {
  const MainArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: const BoxDecoration(
        color: kMainAreaBackgroundColor,
      ),
    );
  }
}
