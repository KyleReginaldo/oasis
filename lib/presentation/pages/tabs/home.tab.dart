import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:oasis/core/constants/constants.dart';
import 'package:oasis/core/constants/strings.dart';
import 'package:oasis/presentation/pages/extension/pdf.viewer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/custom.text.dart';
import '../../widgets/fade.effect.dart';
import '../../widgets/image.hover.dart';
import '../../widgets/responsive.dart';

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
                  )
                      .animate()
                      .fadeIn(duration: 400.ms)
                      .then(delay: 100.ms) // baseline=800ms
                      .slide(),
                  CustomText(
                    'In the realm of digital storytelling, a dynamic group of girls and boys unites to create a captivating movie website. Their collaboration breathes life into pixels, weaving an immersive experience that embraces the magic of cinema. Together, they transform their shared vision into a digital masterpiece, inspiring audiences one click at a time.',
                    size: 13.sp,
                  ).animate().fadeIn(delay: 500.ms),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Iconify(Ic.round_play_arrow),
                        label: CustomText(
                          'Play',
                          size: 12.sp,
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
                          size: 12.sp,
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
                size: 12.sp,
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
                              builder: (ctx) => SimpleDialog(
                                  insetPadding:
                                      EdgeInsets.symmetric(vertical: 2.h),
                                  contentPadding: EdgeInsets.zero,
                                  titlePadding: EdgeInsets.zero,
                                  clipBehavior: Clip.hardEdge,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                height: 40.h,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/top${index + 1}.jpg',
                                                    ),
                                                    fit: BoxFit.cover,
                                                    opacity: 0.2,
                                                  ),
                                                ),
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.7,
                                                child: Hero(
                                                  tag:
                                                      'assets/images/top${index + 1}.jpg',
                                                  child: Image.asset(
                                                    'assets/images/top${index + 1}.jpg',
                                                    fit: BoxFit.fitHeight,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 0,
                                                right: 0,
                                                child: CustomPaint(
                                                  foregroundPainter:
                                                      FadingEffect(),
                                                  child: SizedBox(
                                                    height: 6.h,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.7,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 2.h,
                                                left: 4.h,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomText(
                                                      names[index],
                                                      size: 18.sp,
                                                    ).animate().fadeIn(),
                                                    ElevatedButton.icon(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (ctx) =>
                                                                PdfViewer(
                                                              pdf: pdfs[index],
                                                              name:
                                                                  names[index],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      icon: const Iconify(Teenyicons
                                                          .text_document_alt_outline),
                                                      label: CustomText(
                                                        'Resume',
                                                        size: 12.sp,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 4.h,
                                              right: 4.h,
                                              top: 2.h,
                                            ),
                                            child: CustomText(
                                              ages[index],
                                              size: 11.sp,
                                            ).animate().fadeIn(),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 4.h,
                                              top: 0.5.h,
                                              bottom: 1.h,
                                            ),
                                            child: Row(
                                              children: [
                                                const Iconify(
                                                  Carbon.location_person,
                                                  color: PRIMARY_COLOR,
                                                ),
                                                CustomText(
                                                  addresses[index],
                                                  size: 11.sp,
                                                  color: Colors.grey,
                                                ).animate().fadeIn(),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 4.h,
                                              right: 4.h,
                                              top: 2.h,
                                            ),
                                            child: CustomText(
                                              'Hobby',
                                              size: 11.sp,
                                            ).animate().fadeIn(),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 4.h,
                                              top: 0.5.h,
                                              bottom: 1.h,
                                            ),
                                            child: Wrap(
                                              spacing: 0.5.h,
                                              children: hobbies[index]
                                                  .map((e) => Chip(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          side:
                                                              const BorderSide(
                                                            color:
                                                                PRIMARY_COLOR,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        label: CustomText(
                                                          e,
                                                          size: 11.sp,
                                                        ).animate().fadeIn(),
                                                      ))
                                                  .toList(),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 4.h,
                                              bottom: 0.2.h,
                                            ),
                                            child: CustomText(
                                              'Synopsis',
                                              size: 11.sp,
                                            ).animate().fadeIn(),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 4.h,
                                            ),
                                            child: CustomText(
                                              descriptions[index],
                                              size: 11.sp,
                                              color: Colors.grey,
                                            ).animate().fadeIn(),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 4.h,
                                              top: 2.h,
                                              bottom: 0.5.h,
                                            ),
                                            child: CustomText(
                                              'Educational Background',
                                              size: 11.sp,
                                            ).animate().fadeIn(),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 4.h,
                                              right: 4.h,
                                            ),
                                            child: Column(
                                              children:
                                                  educs[index].map((educ) {
                                                return Column(
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        top: 1.h,
                                                        bottom: 1.h,
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          CustomText(
                                                            '${educs[index].indexOf(educ) + 1}',
                                                            size: 12.sp,
                                                          ),
                                                          SizedBox(width: 1.w),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                            child: Image.asset(
                                                              educ.image,
                                                              height: 8.h,
                                                              width: 8.w,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          SizedBox(width: 1.w),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomText(
                                                                educ.title,
                                                                size: 12.sp,
                                                              ),
                                                              CustomText(
                                                                educ.date,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const Divider(),
                                                  ],
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Hero(
                              tag: 'assets/images/top${index + 1}.jpg',
                              child: ImageHover(
                                child: Image.asset(
                                  'assets/images/top${index + 1}.jpg',
                                  height: Responsive.isMobile(context)
                                      ? 32.h
                                      : MediaQuery.sizeOf(context).height *
                                          0.24,
                                  width: Responsive.isMobile(context)
                                      ? 25.w
                                      : MediaQuery.sizeOf(context).width * 0.20,
                                  fit: BoxFit.cover,
                                  // fit: BoxFit.cover,
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
                'Recommended Movies and TV series',
                size: 12.sp,
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
                    20,
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
                            // showDialog(
                            //   context: context,
                            //   builder: (ctx) => Dialog(
                            //     clipBehavior: Clip.hardEdge,
                            //     child: Column(
                            //       children: [
                            //         Stack(
                            //           children: [
                            //             Hero(
                            //               tag:
                            //                   'assets/images/top${index + 1}.jpg',
                            //               child: Image.asset(
                            //                 'assets/images/top${index + 1}.jpg',
                            //                 height: 40.h,
                            //                 width: MediaQuery.sizeOf(context)
                            //                         .width *
                            //                     0.7,
                            //                 fit: BoxFit.cover,
                            //               ),
                            //             ),
                            //             Positioned(
                            //               bottom: 0,
                            //               left: 0,
                            //               right: 0,
                            //               child: CustomPaint(
                            //                 foregroundPainter: FadingEffect(),
                            //                 child: SizedBox(
                            //                   height: 6.h,
                            //                   width: MediaQuery.sizeOf(context)
                            //                           .width *
                            //                       0.7,
                            //                 ),
                            //               ),
                            //             ),
                            //             Positioned(
                            //               bottom: 2.h,
                            //               left: 2.h,
                            //               child: Column(
                            //                 crossAxisAlignment:
                            //                     CrossAxisAlignment.start,
                            //                 children: [
                            //                   CustomText(
                            //                     names[index],
                            //                     size: 18.sp,
                            //                   ),
                            //                   ElevatedButton.icon(
                            //                     onPressed: () {},
                            //                     icon: const Icon(
                            //                         Icons.play_arrow),
                            //                     label: CustomText(
                            //                       'Resume',
                            //                       size: 14.sp,
                            //                     ),
                            //                   ),
                            //                 ],
                            //               ),
                            //             ),
                            //           ],
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Hero(
                              tag: 'assets/images/top${index + 1}.jpg',
                              child: ImageHover(
                                child: Image.asset(
                                  movies[index],
                                  height: Responsive.isMobile(context)
                                      ? 32.h
                                      : MediaQuery.sizeOf(context).height *
                                          0.24,
                                  width: Responsive.isMobile(context)
                                      ? 25.w
                                      : MediaQuery.sizeOf(context).width * 0.08,
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
          ],
        ),
      ),
    );
  }
}
