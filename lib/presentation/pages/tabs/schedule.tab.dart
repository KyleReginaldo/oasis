import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:oasis/core/constants/constants.dart';
import 'package:oasis/core/constants/strings.dart';
import 'package:oasis/presentation/widgets/custom.text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScheduleTab extends StatelessWidget {
  const ScheduleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.6,
            width: MediaQuery.sizeOf(context).width,
            padding:
                EdgeInsets.only(top: 4.h, left: 4.h, bottom: 4.h, right: 24.w),
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(
                  '${BASE_IMAGE_PATH}time.jpg',
                ),
                fit: BoxFit.cover,
                opacity: 0.5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  'Timebound Harmony',
                  size: 20.sp,
                ).animate().fadeIn(),
                CustomText(
                  '"Timebound Harmony" is a captivating story that follows the journey of Alex, an ambitious young professional struggling to find balance in a fast-paced world. Feeling overwhelmed by an endless stream of tasks and commitments, Alex stumbles upon a revolutionary scheduling app called "Schedule."',
                  size: 13.sp,
                ).animate().fadeIn(),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height * 0.5,
            left: 4.h,
            right: 0.h,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: scheds1.map((e) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.symmetric(horizontal: 0.5.h),
                        width: MediaQuery.sizeOf(context).width * 0.23,
                        height: 20.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(e),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: const BoxDecoration(color: PRIMARY_COLOR),
                          padding: EdgeInsets.symmetric(
                            horizontal: 2.w,
                            vertical: 0.5.h,
                          ),
                          child: CustomText(
                            schedStrings[scheds1.indexOf(e)],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 2.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: scheds2.map((e) {
                      return Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.symmetric(horizontal: 0.5.h),
                        width: MediaQuery.sizeOf(context).width * 0.23,
                        height: 20.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(e),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: const BoxDecoration(color: PRIMARY_COLOR),
                          padding: EdgeInsets.symmetric(
                            horizontal: 2.w,
                            vertical: 0.5.h,
                          ),
                          child: CustomText(
                            schedStrings2[(scheds2.indexOf(e))],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
