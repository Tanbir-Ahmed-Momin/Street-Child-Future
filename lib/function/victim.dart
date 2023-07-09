import 'package:flutter/material.dart';

class Victim extends StatefulWidget {
  const Victim({super.key});

  @override
  State<Victim> createState() => _VictimState();
}

class _VictimState extends State<Victim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 214, 224),
        title: Text('Victim'),
        actions: [
          IconButton(
            icon: Icon(Icons.people),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Handle search text changes
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Replace with the actual number of organizations
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('image/demo.png'),
                    ),
                    title: Text('Victim Name $index'),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                    ),
                    onTap: () {
                      // Handle organization item tapped
                       showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Victim Details'),
                            content: Text('Victim Name $index'),
                            actions: [
                              TextButton(
                                child: Text('Close'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}