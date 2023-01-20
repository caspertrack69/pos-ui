import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'package:pos_ui/module/onboarding/widget/iconContainer.dart';

class CommunityLightCardContent extends StatelessWidget {
  const CommunityLightCardContent();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        IconContainer(
          icon: Icons.person,
          padding: kPaddingS,
        ),
        IconContainer(
          icon: Icons.group,
          padding: kPaddingM,
        ),
        IconContainer(
          icon: Icons.insert_emoticon,
          padding: kPaddingS,
        ),
      ],
    );
  }
}
