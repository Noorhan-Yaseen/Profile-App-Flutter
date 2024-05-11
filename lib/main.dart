import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Assigmnent# 01',
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 197, 225, 239), 
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.indigo,
                      width: 4.0,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGAbkVgyQbwYNrSwq0FqWDWCJcOQVOf23DvHbOR-G105CfKl0I0Uo6PhBRTHRlianbvHE&usqp=CAU',
                    ),
                  ),
                ),
                const Text(
                  'Picture',
                  style: TextStyle(fontSize: 20),
                ),
                itemProfile('Name:', 'Noorhan Yaseen', Colors.red, Icons.person),
                itemProfile('Roll no:', '20-NTU-CS-1175', Colors.green, Icons.confirmation_number),
                itemProfile('Department:', 'Computer Science', Colors.blue, Icons.business),
                itemProfile('Email:', 'nooryaseen@gmail.com', Colors.orange, Icons.email),
                itemProfile('Gender', 'Female', Colors.blue, Icons.female),
                itemProfile('Religion', 'Islam', Colors.green, Icons.star),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(30.0),
                    ),
                    child: const Text('Edit Profile'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget itemProfile(String title, String subtitle, Color iconColor, IconData iconData) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData, color: iconColor),
      ),
    );
  }
}
