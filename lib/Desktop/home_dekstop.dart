import 'package:flutter/material.dart';
import 'package:one_nation/Desktop/bottom_row.dart';
import 'package:one_nation/Desktop/footer.dart';
import 'package:one_nation/Desktop/start_page.dart';
import 'package:one_nation/Widgets/middle_row.dart';

class Desktop extends StatelessWidget {
  Desktop({super.key});

  Set<Widget> wids = {
    const StartPage(),
    const MiddleRow(),
    const BottomRow(),
    const Footer()
  };

  final scrollController = ScrollController();

  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    //var screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: scrollController,
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          StartPage(
            key: navBarKeys[0],
          ),
          MiddleRow(
            key: navBarKeys[1],
          ),
          BottomRow(
            key: navBarKeys[2],
          ),
          Footer(
            key: navBarKeys[3],
          ),
        ],
      ),
    );
  }

  void scrolltoIndex(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(microseconds: 600),
      curve: Curves.bounceInOut,
    );
  }
}
