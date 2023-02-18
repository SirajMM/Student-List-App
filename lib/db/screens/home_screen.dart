import 'package:flutter/services.dart';
// import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hive_samle/db/screens/search.dart';
import 'package:hive_samle/db/screens/widgets/add_student.dart';
import 'package:hive_samle/db/functions/db_functions.dart';
import 'package:hive_samle/db/screens/widgets/list_student.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed:(){
         SystemNavigator.pop();
        } ,
        icon: Icon(Icons.arrow_back),),
        
       title: Text('Student List'),
       centerTitle: true,
       actions: [
        IconButton(onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: ((context)=>SearchScreen())));
        }, 
        icon: Icon(Icons.search)),
       ],
      ),
      body:Column(
        children: const[
          
            Expanded(
            child:StudentList(),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: (){
        add(context);
        },
        ),
    );
  }
  add(BuildContext ctx){
   Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx1)=>AddStudent_w()));
  }

}