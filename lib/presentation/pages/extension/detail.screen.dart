// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailScreen extends StatelessWidget {
  final String imagePath;
  const DetailScreen({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: imagePath,
            child: Image.asset(
              imagePath,
              height: 25.h,
            ),
          ),
        ],
      ),
    );
  }
}
