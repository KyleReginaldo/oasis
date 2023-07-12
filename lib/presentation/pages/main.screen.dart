import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oasis/core/constants/strings.dart';
import 'package:oasis/presentation/pages/tabs/about.tab.dart';
import 'package:oasis/presentation/pages/tabs/gallery.tab.dart';
import 'package:oasis/presentation/pages/tabs/home.tab.dart';
import 'package:oasis/presentation/pages/tabs/schedule.tab.dart';
import 'package:oasis/presentation/state/cubit/nav_bar_cubit.dart';
import 'package:oasis/presentation/widgets/custom.text.dart';
import 'package:oasis/presentation/widgets/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<({String name, int index})> navs = [
    (name: 'Home', index: 0),
    (name: 'Gallery', index: 1),
    (name: 'Schedule', index: 2),
    (name: 'About', index: 3),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.sizeOf(context).width > 700 ? false : true;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(1),
      // extendBodyBehindAppBar: true,
      drawer: Responsive.isMobile(context) ? const Drawer() : null,
      appBar: AppBar(
        centerTitle: true,
        title: Responsive.isMobile(context)
            ? null
            : Row(
                children: [
                  Image.asset(
                    '${BASE_IMAGE_PATH}logo.png',
                    height: 3.5.h,
                  ),
                  ...navs.map((e) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.w),
                      child: TextButton(
                        onPressed: () {
                          context
                              .read<NavBarCubit>()
                              .onNavigatePage(index: e.index);
                        },
                        child: CustomText(e.name),
                      ),
                    );
                  }).toList()
                ],
              ),
      ),
      body: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          if (state is Home) {
            return const HomeTab();
          } else if (state is Gallery) {
            return const GalleryTab();
          } else if (state is Schedule) {
            return const ScheduleTab();
          } else if (state is About) {
            return const AboutTab();
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
