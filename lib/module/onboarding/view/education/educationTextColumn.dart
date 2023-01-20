import 'package:flutter/material.dart';

import 'package:pos_ui/module/onboarding/widget/textColumn.dart';

class EducationTextColumn extends StatelessWidget {
  const EducationTextColumn();

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Keep learning',
      text: 'Ipsum magna enim cupidatat culpa elit cillum velit occaecat.',
    );
  }
}