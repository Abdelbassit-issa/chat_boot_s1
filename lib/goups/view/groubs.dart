import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  const Groups({super.key});

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Search for groubs',
                hintText: 'Enter your location',
              ),
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder:
                  (context, index) => ListTile(
                    title: Text('Groub ${index + 1}'),
                    onTap: () {
                      // Navigate to GroubDetailScreen
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
