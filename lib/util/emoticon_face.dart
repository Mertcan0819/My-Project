import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  const EmoticonFace({super.key, required this.emoticonface});

final String emoticonface;

  @override
  Widget build(BuildContext context) {
    return Container(                                                 // önce icon açıp sonra container ile sarmaladık ve  decoration yaptık 
                           decoration: BoxDecoration(
                             color: Colors.blue[600],
                             borderRadius: BorderRadius.circular(12) 
                            ),
                             padding: const EdgeInsets.all(12),                           // dikkat et padding i container içinde verdik. yani paddik ile sarmalamadık. bu sayede container in içine paddingn vermiş olduk.
                             child: Center(child: Text(emoticonface, style: const TextStyle(fontSize: 28),)),   // emoticonface burada gülücük emojisi vardı final ile yukarıda tanımladık
                         );
  }
}