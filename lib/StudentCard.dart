import 'package:flutter/material.dart';
import 'package:homework2/Student.dart';
class StudentCard extends StatelessWidget {
  final Student student;

  const StudentCard(this.student);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      color: Colors.indigo,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('assets/images/image.png', width: 80, height: 80,),

          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('id:  ', style: TextStyle(fontSize: 25, color: Colors.black )),
                  Text(student.id , style: TextStyle(fontSize: 25, color: Colors.black )),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                children: [
                  Text('name:  ', style: TextStyle(fontSize: 25, color: Colors.black )),
                  Text(student.name , style: TextStyle(fontSize: 25, color: Colors.black )),
                ],
              ),
             Row(
               children: [
                 Column(
                       children: [
                         Icon(
                           Icons.add,
                         ),
                       ],
                 ),
                 Column(
                       children: [
                         Icon(
                           Icons.remove,)
                       ],
                     ),
                 Column(
                   children: [
                      Chip(
                          label: Text('#',style: TextStyle(),)
                      ),
                   ],
                 ),
               ],
             )
            ],
          ),

        ],
      ),
    );
  }

}