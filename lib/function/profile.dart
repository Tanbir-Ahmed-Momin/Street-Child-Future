import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nidController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _numberController.dispose();
    _addressController.dispose();
    _emailController.dispose();
    _nidController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 111, 214, 224),
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // Save button action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
  height: 80,
  child: Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: Container(
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: Icon(
            Icons.cloud_upload,
            size: 50,
            color: Colors.grey[600],
          ),
        ),
      ),
      Positioned(
        top: 8,
        right: 8,
        child: IconButton(
          icon: Icon(
            Icons.photo_camera,
            size: 24,
          ),
          onPressed: () {
            // Implement image upload functionality here
          },
        ),
      ),
    ],
  ),
),

          SizedBox(height: 16),
            Text('Name'),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
            SizedBox(height: 16),
            Text('Number'),
            TextField(
              controller: _numberController,
              decoration: InputDecoration(
                hintText: 'Enter your number',
              ),
            ),
            SizedBox(height: 16),
            Text('Address'),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                hintText: 'Enter your address',
              ),
            ),
            SizedBox(height: 16),
            Text('Email'),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16),
            Text('NID'),
            TextField(
              controller: _nidController,
              decoration: InputDecoration(
                hintText: 'Enter your NID',
              ),
            ),
            SizedBox(height: 32),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Logout button action
                },
                child: Text('Logout'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
