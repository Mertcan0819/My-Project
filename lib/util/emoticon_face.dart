import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  const EmoticonFace({super.key, required this.emoticonface});

final String emoticonface;

  @override
  Widget build(BuildContext context) {
    return Container(                                           
                           decoration: BoxDecoration(
                             color: Colors.blue[600],
                             borderRadius: BorderRadius.circular(12) 
                            ),
                             padding: const EdgeInsets.all(12),                     
                             child: Center(child: Text(emoticonface, style: const TextStyle(fontSize: 28),)),
                         );
  }
}
