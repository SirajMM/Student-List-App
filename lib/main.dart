import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_samle/application/student_bloc/student_bloc.dart';
import 'package:hive_samle/db/model/data_model.dart';
import 'package:hive_samle/presentation/home/home_screen.dart';
import 'application/search_bloc/search_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  await Hive.openBox<StudentModel>('students');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => StudentBloc(),
        ),
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.grey.shade300,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepPurple.shade300,
              foregroundColor: Colors.white),
        ),
        home: const Home_Screen(),
      ),
    );
  }
}
