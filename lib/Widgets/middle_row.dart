import 'package:flutter/material.dart';
import 'package:one_nation/Widgets/data_container.dart';

class MiddleRow extends StatelessWidget {
  const MiddleRow({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width / 12, vertical: 20),
      child: Container(
        color: Colors.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: const EdgeInsets.all(9),
            width: width * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Helping People \nOur Main Goal',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Our NGO is a non-profit organization dedicated to making a positive impact on society and improving the lives of individuals in need. With a strong focus on humanitarian efforts, we strive to address various social, economic, and environmental challenges faced by communities around the world.\n\n' +
                      'At the heart of our organization is a passionate team of volunteers who work tirelessly to implement sustainable and innovative solutions. We believe in the power of collaboration and actively seek partnerships with local communities, governments, and other organizations to maximize our impact.',
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'More About',
                      style: TextStyle(fontSize: 20, letterSpacing: 1.5),
                    ))
              ],
            ),
          ),
          const DataContainer()
        ]),
      ),
    );
  }
}
