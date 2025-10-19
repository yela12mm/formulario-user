import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
              padding: EdgeInsets.all(4), 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromARGB(255, 13, 59, 97), 
                  width: 4, 
                ),
              ),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/hearvy.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Divider(height: 20, color: const Color.fromARGB(255, 13, 59, 97)),
          ],
      
      
    );
  }
}