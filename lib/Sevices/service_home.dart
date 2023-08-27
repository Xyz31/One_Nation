import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_nation/Sevices/disability.dart';
import 'package:one_nation/Sevices/petpage.dart';
import 'package:one_nation/Sevices/plantpage.dart';
import 'package:one_nation/Sevices/scholarship.dart';

class ServiceHome extends StatefulWidget {
  const ServiceHome({super.key});

  @override
  State<ServiceHome> createState() => _ServiceHomeState();
}

class _ServiceHomeState extends State<ServiceHome> {
  Set<String> images = {
    'Assets/Images/pet2.jpg',
    'Assets/Images/plant2.jpg',
    'Assets/Images/scholar.jpg',
    'Assets/Images/help.jpg'
  };

  Set<String> services = {'Pet', 'Plant', 'Scholarship', 'Disability Activism'};

  void navigateToPetPage() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => PetPage()));
  }

  //
  void navigateToPlantPage() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => PlantPage()));
  }

  //
  void navigateToScholarshipPage() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => ScholarshipPage()));
  }

  //
  void navigateToDisabilityPage() {
    Navigator.push(
        context, CupertinoPageRoute(builder: (context) => Disability()));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          //leading: Container(),
          backgroundColor: Colors.grey[200],
          centerTitle: true,
          title: Text(
            'You Are One Click Away',
            style: TextStyle(color: Colors.grey[800]),
          ),
        ),
        body: SizedBox(
          width: width,
          child: SingleChildScrollView(
            child: Column(children: [
              for (int i = 0; i < 4; i++)
                Card(
                  elevation: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: width < 800
                          ? Column(
                              children: [
                                SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: Card(
                                    elevation: 8,
                                    child: Image.asset(
                                      images.elementAt(i),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  services.elementAt(i),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 300,
                                  padding: const EdgeInsets.all(1),
                                  margin: const EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[350],
                                    borderRadius: BorderRadius.circular(
                                        10), // Adjust the radius as needed
                                  ),
                                  child: CupertinoButton(
                                      onPressed: () {
                                        switch (i) {
                                          case 0:
                                            navigateToPetPage();
                                            break;
                                          case 1:
                                            navigateToPlantPage();
                                            break;
                                          case 2:
                                            navigateToScholarshipPage();
                                            break;
                                          case 3:
                                            navigateToDisabilityPage();
                                            break;
                                        }
                                      },
                                      child: const Text(
                                        'Click to Explore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            letterSpacing: 2),
                                      )),
                                )
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: Card(
                                    child: Image.asset(
                                      images.elementAt(i),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Text(
                                  services.elementAt(i),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 300,
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[700],
                                    borderRadius: BorderRadius.circular(
                                        25), // Adjust the radius as needed
                                  ),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        switch (i) {
                                          case 0:
                                            navigateToPetPage();
                                            break;
                                          case 1:
                                            navigateToPlantPage();
                                            break;
                                          case 2:
                                            navigateToScholarshipPage();
                                            break;
                                          case 3:
                                            navigateToDisabilityPage();
                                            break;
                                        }
                                      },
                                      child: const Text(
                                        'Click to Explore',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            letterSpacing: 2),
                                      )),
                                )
                              ],
                            ),
                    ),
                  ),
                ),
            ]),
          ),
        ));
  }
}
