import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/custom.text.dart';
import '../../widgets/fade.effect.dart';
import '../../widgets/image.hover.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.sizeOf(context).width > 700 ? false : true;

    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 2.h, bottom: 2.h, right: 16.h),
              width: MediaQuery.sizeOf(context).width,
              // height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/eye.jpg',
                  ),
                  fit: BoxFit.cover,
                  opacity: 0.6,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    'The\nOASIS',
                    size: 30.sp,
                    textAlign: TextAlign.end,
                    weight: FontWeight.w500,
                  ),
                  CustomText(
                    'In the realm of digital storytelling, a dynamic group of girls and boys unites to create a captivating movie website. Their collaboration breathes life into pixels, weaving an immersive experience that embraces the magic of cinema. Together, they transform their shared vision into a digital masterpiece, inspiring audiences one click at a time.',
                    size: 13.sp,
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow),
                        label: CustomText(
                          'Play',
                          size: 14.sp,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.grey.shade600,
                          ),
                          foregroundColor: const MaterialStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.info),
                        label: CustomText(
                          'About',
                          size: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: CustomText(
                'Top 5 Student in the Trece Today',
                size: 16.sp,
                weight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 0.5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        right: 2.h,
                        bottom: 1.h,
                      ),
                      child: MouseRegion(
                        onEnter: (v) {},
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (ctx) => DetailScreen(
                            //         imagePath:
                            //             'assets/images/top${index + 1}.jpg'),
                            //   ),
                            // );
                            showDialog(
                              context: context,
                              builder: (ctx) => Dialog(
                                clipBehavior: Clip.hardEdge,
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Hero(
                                          tag:
                                              'assets/images/top${index + 1}.jpg',
                                          child: Image.asset(
                                            'assets/images/top${index + 1}.jpg',
                                            height: 40.h,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.7,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          left: 0,
                                          right: 0,
                                          child: CustomPaint(
                                            foregroundPainter: FadingEffect(),
                                            child: SizedBox(
                                              height: 6.h,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.7,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 2.h,
                                          left: 2.h,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                'Marc Aaron Abanggo',
                                                size: 18.sp,
                                              ),
                                              ElevatedButton.icon(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.play_arrow),
                                                label: CustomText(
                                                  'Resume',
                                                  size: 14.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Hero(
                              tag: 'assets/images/top${index + 1}.jpg',
                              child: ImageHover(
                                child: Image.asset(
                                  'assets/images/top${index + 1}.jpg',
                                  height: isMobile ? 22.h : 20.h,
                                  width: isMobile ? 32.w : 25.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ).toList(),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: CustomText(
                'Action',
                size: 16.sp,
                weight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 0.5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        right: 2.h,
                        bottom: 1.h,
                      ),
                      child: Image.asset(
                        'assets/images/ph1.jpg',
                        height: isMobile ? 22.h : 20.h,
                        width: isMobile ? 15.w : 18.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ).toList(),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: CustomText(
                'Romance',
                size: 16.sp,
                weight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 0.5.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        right: 2.h,
                        bottom: 1.h,
                      ),
                      child: Image.asset(
                        'assets/images/ph1.jpg',
                        height: isMobile ? 22.h : 20.h,
                        width: isMobile ? 15.w : 18.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
