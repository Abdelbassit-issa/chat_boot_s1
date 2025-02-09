import 'package:chat_boot_s1/utils/mass.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List<Widget> chats = [
  Card(
    shape: BeveledRectangleBorder(
      // side: BorderSide(color: Colors.blueGrey.shade300,strokeAlign: 0.1),
      borderRadius: BorderRadius.circular(3),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                'Dragon Fly',
                style: TextStyle(fontSize: 18, color: Colors.blueGrey.shade800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Row(
                children: [
                  Icon(Icons.date_range, size: 14, color: Colors.blueGrey[400]),
                  Text(
                    '${DateFormat('jm').format(DateTime.now())}:${DateFormat('yMMMEd').format(DateTime.now())}',
                    style: TextStyle(fontSize: 10, color: Colors.blueGrey[400]),
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: Text(
            
            chat_mass,
            style: TextStyle(
              fontSize: 12,
              
 
              color: Colors.blueGrey,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            maxLines: 3,
          ),
        ),

        SizedBox(
          width: 59,
          height: 59,
          child: Card(
            shape: BeveledRectangleBorder(
              side: BorderSide(
                color: Colors.blueGrey.shade300,
                strokeAlign: 0.1,
              ),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Image.network(
              fit: BoxFit.cover,
              'https://images.freeimages.com/image/previews/10e/dragon-brand-kit-5690979.jpg?fmt=webp&w=500',
            ),
          ),
        ),
      ],
    ),
  ),
];
