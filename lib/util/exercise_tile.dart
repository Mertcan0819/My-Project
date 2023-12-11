// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';



class ExerciseTile extends StatelessWidget {

final icon;
final String  exercisaName;            // dışardan parametre alıyoruz. 3 adet. icon için text için  ve ikinci text için. ve color için... bu sayede container yapısını 3 defa yazmak yerine 1 defa yazıp. ana projemizde çogaldıp. içine değişiklikler yapıyoruz  BU KONU ÇOK ÖNEMLİ
final int  exercisaDescription;
final color;

  const ExerciseTile({super.key, this.icon, required this.exercisaName, required this.exercisaDescription, this.color});


  @override
  Widget build(BuildContext context) {           // EKRANDAKİ ALTTA BEYAZ ALANIN İÇİNDEKİ CARDLAR BURAYA AKTARDIK. CONTAİNER YAPISI OLARAK. DAHA SONRA PADDİNG İLE SARMALADIK 
       return     Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),  
                  child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.white , borderRadius:BorderRadius.circular(16)),
    
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(              // bu row container ile colmn u yan yana getirdi. sobra bu row u tekrar row ile sarmalayıp. bu row un bitimine tekrar icon atadık ve üstteki row a betwen verince 3 nokta sağ tarafa kaydı  (container cliprrect ile sarmalandı araştır.. sanırım bunun sebebi border radius yapabilmek için )
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


