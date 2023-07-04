import 'package:flutter/material.dart';

import 'disk_widget.dart';

class MaskedPriceWidget extends StatelessWidget {
  const MaskedPriceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(8, (index) => const DiskWidget()),
    );
  }
}
