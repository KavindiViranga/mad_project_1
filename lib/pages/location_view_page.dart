import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mad_project/components/back_dots.dart';
import 'package:mad_project/pages/mode_selector_page.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackDots(
        title: "Other Locations",
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    LocationCard(
                      imagePath: 'assets/images/gate.png',
                      title: 'Main Gate',
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    LocationCard(
                      imagePath: 'assets/images/audi.png',
                      title: 'Auditorium',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    LocationCard(
                      imagePath: 'assets/images/library.png',
                      title: 'Library',
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    LocationCard(
                      imagePath: 'assets/images/audi.png',
                      title: 'S Center',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    LocationCard(
                      imagePath: 'assets/images/gym.png',
                      title: 'GYM',
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    LocationCard(
                      imagePath: 'assets/images/pool.png',
                      title: 'Pool',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    LocationCard(
                      imagePath: 'assets/images/bank.png',
                      title: 'Bank',
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    LocationCard(
                      imagePath: 'assets/images/salon.png',
                      title: 'Saloon',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    LocationCard(
                      imagePath: 'assets/images/hostel.jpg',
                      title: 'Hostel',
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    LocationCard(
                      imagePath: 'assets/images/ground1.png',
                      title: 'Ground',
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LocationCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const LocationCard({
    required this.imagePath,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.43;
    double containerHeight = 150;
    double fontlarge = MediaQuery.of(context).size.width * 0.04;

    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: fontlarge),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_circle_right,
                        color: HexColor("#00B251"),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ModeSelector(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
