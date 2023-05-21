import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_samle/application/student_bloc/student_bloc.dart';
import 'package:hive_samle/presentation/profile/profile.dart';

import '../edit_screen/editprofile.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        if (state is Initial) {
          BlocProvider.of<StudentBloc>(context)
              .add(const ViewAllStudentsEvent());
        }
        if (state is ViewAllStudents) {
          if (state.students.isNotEmpty) {
            return ListView.separated(
              itemBuilder: ((ctx, index) {
                final data = state.students[index];
                return ListTile(
                  contentPadding: const EdgeInsets.only(left: 5.0),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: data.image.isEmpty || data.image == 'x'
                        ? const AssetImage('assets/defaultDp.jpg')
                            as ImageProvider
                        : FileImage(File(data.image)),
                  ),
                  title: Text(data.name),
                  subtitle: Text(data.age),
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StudentProfile(
                                  passId: index,
                                  passValue: data,
                                )));
                  }),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(
                                    index: index, passValueProfile: data),
                              )),
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            deleteAlert(context, index);
                          },
                          icon: const Icon(
                            Icons.delete_outlined,
                            color: Colors.red,
                          )),
                    ],
                  ),
                  // style:  ListTileStyle(),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: Colors.grey.shade400.withOpacity(.4),
                );
              }),
              separatorBuilder: (ctx, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: state.students.length,
            );
          }
        }
        return const Center(
          child: Text('Add Students'),
        );
      },
    );
  }
}

deleteAlert(BuildContext context, index) {
  showDialog(
    context: context,
    builder: ((ctx) => AlertDialog(
          content: const Text('Are you sure you want to delete'),
          actions: [
            TextButton(
                onPressed: () {
                  context.read<StudentBloc>().add(DeleteStudent(index));
                  Navigator.of(context).pop(ctx);
                },
                child: const Text(
                  'Delete',
                  style: TextStyle(color: Colors.red),
                )),
            TextButton(
              onPressed: () => Navigator.of(context).pop(ctx),
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        )),
  );
}
