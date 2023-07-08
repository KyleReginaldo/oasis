import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oasis/presentation/pages/tabs/home.tab.dart';
import 'package:oasis/presentation/state/cubit/nav_bar_cubit.dart';
import 'package:oasis/presentation/widgets/custom.text.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<({String name, int index})> navs = [
    (name: 'Home', index: 0),
    (name: 'Gallery', index: 1),
    (name: 'Education', index: 2),
    (name: 'Hobbies', index: 3),
    (name: 'Schedule', index: 4),
    (name: 'Resume', index: 5),
  ];
  bool isMobile = false;
  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.sizeOf(context).width > 700 ? false : true;
    return Scaffold(
      backgroundColor: Colors.black,
      // extendBodyBehindAppBar: true,
      drawer: isMobile ? const Drawer() : null,
      appBar: AppBar(
        title: isMobile
            ? null
            : Row(
                children: navs.map((e) {
                  return TextButton(
                    onPressed: () {
                      context
                          .read<NavBarCubit>()
                          .onNavigatePage(index: e.index);
                    },
                    child: CustomText(e.name),
                  );
                }).toList(),
              ),
      ),
      body: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          if (state is Home) {
            return const HomeTab();
          } else if (state is Gallery) {
            return Container();
          } else if (state is Education) {
            return Container();
          } else if (state is Hobbies) {
            return Container();
          } else if (state is Schedule) {
            return Container();
          } else if (state is Resume) {
            return Container();
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
