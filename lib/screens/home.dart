import 'package:child_labour/function/organization.dart';
import 'package:child_labour/function/profile.dart';
import 'package:child_labour/function/report.dart';
import 'package:child_labour/function/victim.dart';
import 'package:flutter/material.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 214, 224),
        title: Text('Street Child Future'),
        actions: [
          IconButton(
            icon: Image.asset("image/ab.jpeg"),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => Profile()),
                       );
            },
          ),
        ],
      ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                 Container(
  height: 200,
  child: Stack(
    children: <Widget>[
      Container(
        width: 410,
        color: Color.fromARGB(255, 236, 244, 236),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            "image/child00.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 12,
        right: 12,
        child: ElevatedButton(
          
          onPressed: () {
             Navigator.push(context,MaterialPageRoute(builder: (context) => Report()),
                       );
            // Add your button's onPressed logic here
          },
          child: Text('Report a street child'),
          style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 214, 37, 90), // Set the background color
  ),
        ),
      ),
    ],
  ),
),

Container(
  height: 410,
  child: GridView.count(
    scrollDirection: Axis.horizontal,
    crossAxisCount: 2,
    children: List.generate(4, (index) {
      List<Color> colors = [
        Colors.amber,
        Colors.blue,
        Colors.green,
        Colors.red,
      ];
      List<String> texts = [
        'Total Victim',
        'Total Organization',
        'Total Free Seat',
        'Total Seat',
      ];
      List<String> info = [
        '20',
        '56',
        '66',
        '43',
      ];
      return Container(
        child: Card(
          color: colors[index % colors.length],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                texts[index % texts.length],
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                info[index % info.length],
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      );
    }),
  ),
),


                 Container(
  height: 200,
  child: ListView(
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    children: <Widget>[
      Container(
        width: 50,
        height: 100,
        color: Colors.yellowAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.holiday_village),
                  onPressed: () {
                    // Add your button's onPressed logic here

                     Navigator.push(context,MaterialPageRoute(builder: (context) => OrganizationPage()),
                       );
                  },
                ),
                Text(
                  'Organization',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.scale),
                  onPressed: () {
                    // Add your button's onPressed logic here
                     Navigator.push(context,MaterialPageRoute(builder: (context) => Victim()),
                       );
                  },
                ),
                Text(
                  'Victim',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.qr_code),
                  onPressed: () {
                    // Add your button's onPressed logic here
                  },
                ),
                Text(
                  'Scan',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  ),
),
                 
                ],
              ),
            ),
          ),
        ),
      );
  }
}