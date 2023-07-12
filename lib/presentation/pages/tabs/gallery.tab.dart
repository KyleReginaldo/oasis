import 'package:flutter/material.dart';
import 'package:oasis/core/constants/constants.dart';
import 'package:oasis/core/constants/strings.dart';
import 'package:oasis/presentation/widgets/custom.text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GalleryTab extends StatelessWidget {
  const GalleryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'Photo Gallery',
                size: 15.sp,
              ),
              SizedBox(height: 4.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: first.map((e) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.2.h),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              e,
                              width: MediaQuery.sizeOf(context).width * 0.19,
                              height: 20.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: PRIMARY_COLOR,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 0.5.h,
                              ),
                              alignment: Alignment.center,
                              child: CustomText(
                                '${first.indexOf(e) + 1}',
                                weight: FontWeight.bold,
                                size: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 6.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: second.map((e) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.2.h),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              e,
                              width: MediaQuery.sizeOf(context).width * 0.19,
                              height: 20.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: PRIMARY_COLOR,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 0.5.h,
                              ),
                              alignment: Alignment.center,
                              child: CustomText(
                                '${5 + second.indexOf(e) + 1}',
                                weight: FontWeight.bold,
                                size: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 6.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: third.map((e) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.2.h),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              e,
                              width: MediaQuery.sizeOf(context).width * 0.19,
                              height: 20.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: PRIMARY_COLOR,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 0.5.h,
                              ),
                              alignment: Alignment.center,
                              child: CustomText(
                                '${10 + third.indexOf(e) + 1}',
                                weight: FontWeight.bold,
                                size: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 6.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: fourth.map((e) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.2.h),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              e,
                              width: MediaQuery.sizeOf(context).width * 0.19,
                              height: 20.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: PRIMARY_COLOR,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 0.5.h,
                              ),
                              alignment: Alignment.center,
                              child: CustomText(
                                '${15 + fourth.indexOf(e) + 1}',
                                weight: FontWeight.bold,
                                size: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 6.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: fifth.map((e) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.2.h),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              e,
                              width: MediaQuery.sizeOf(context).width * 0.19,
                              height: 20.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: PRIMARY_COLOR,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.h,
                                vertical: 0.5.h,
                              ),
                              alignment: Alignment.center,
                              child: CustomText(
                                '${20 + fifth.indexOf(e) + 1}',
                                weight: FontWeight.bold,
                                size: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
