// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:hive_samle/presentation/search/search.dart';
import 'package:hive_samle/presentation/widgets/add_student.dart';
import 'package:hive_samle/presentation/widgets/list_student.dart';

import 'widgets/icon_widget.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    // getAllStudents();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Student List',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => const SearchScreen(),
                          )),
                      child: const IconWidget(iconImage: 'assets/search.png')),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                      onTap: () => SystemNavigator.pop(),
                      child: const IconWidget(iconImage: 'assets/logout.png'))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Expanded(
                child: StudentList(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple.shade200,
        child: const Icon(CupertinoIcons.person_add),
        onPressed: () {
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (ctx1) => const AddStudent_w(),
            fullscreenDialog: true,
          ));
        },
      ),
    );
  }
}
