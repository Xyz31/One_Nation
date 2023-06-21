import 'package:flutter/material.dart';
import 'package:one_nation/Widgets/voluteer_join.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white24,
      padding: EdgeInsets.all(width / 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: width * 0.3,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Join',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'The [overflow] property\'s behavior is affected by the [softWrap] argument. If the [softWrap] is true or null, t',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                )
              ],
            ),
          ),
          const VolunteerJoin(),
        ],
      ),
    );
  }
}
