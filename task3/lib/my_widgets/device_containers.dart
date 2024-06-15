
import 'package:flutter/material.dart';
import 'package:task_3/screens/home_page.dart';

class InsideContainer extends StatelessWidget {
  const InsideContainer({
    super.key,
    required this.device,
  });

  final DeviceInfo device;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border:
              Border.all(color: Colors.grey.shade100)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset(
          device.iconAsset,
          color: Colors.grey.shade100,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}