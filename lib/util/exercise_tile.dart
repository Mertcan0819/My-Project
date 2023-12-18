// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class ExerciseTile extends StatelessWidget {

final icon;
final String  exercisaName;          
final int  exercisaDescription;
final color;

  const ExerciseTile({super.key, this.icon, required this.exercisaName, required this.exercisaDescription, this.color});


  @override
  Widget build(BuildContext context) {          
       return     Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),  
                  child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.white , borderRadius:BorderRadius.circular(16)),
    
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(              
                    children: [
                    ClipRRect(
                     borderRadius: BorderRadius.circular(12),
                     child: Container(
                      padding: EdgeInsets.all(16),
                     color: color,
                     child:  Icon(icon, color: Colors.white,), 
                         ),
                      ),
                                            // *******
                     SizedBox(width: 12),
                                            // *******
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                        Text(exercisaName , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),   // title 
                         SizedBox(height: 5),
                          Text('$exercisaDescription Exercises', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey),),     // subTitle
                           ],
                         ),
                       ],
                     ),
                       Icon(Icons.more_horiz),
                     ],
                    ),
                  ),
    );
  }
}


