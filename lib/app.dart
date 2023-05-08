import 'package:batch_30a/model/area_of_circle.dart';
import 'package:batch_30a/view/area_of_circle.dart';
import 'package:batch_30a/view/arithemtic_view.dart';
import 'package:batch_30a/view/column_view.dart';
import 'package:batch_30a/view/container_screen.dart';
import 'package:batch_30a/view/dashboard.dart';
import 'package:batch_30a/view/load_image.dart';
import 'package:batch_30a/view/name_change.dart';
import 'package:batch_30a/view/number_generator_view.dart';
import 'package:batch_30a/view/output_screen.dart';
import 'package:batch_30a/view/rich_text.dart';
import 'package:batch_30a/view/si_view.dart';
import 'package:batch_30a/view/student_details.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/addRoute': (context) => const ArithmeticView(),
        '/siRoute': (context) => const SiView(),
        '/areaRoute' : (context) => const AreaOfCircle(),
        '/changeRoute' : (context) => const MyNameChange(),
        '/RichRoute' : (context) => const RichTextView(),
        '/ColumnRoute' : (context) => const ColumnView(),
        '/NumberRoute' : (context) => const NumberGeneratorView(),
        '/outputRoute' : (context) => const OutputScreenView(),
        '/containerRoute' : (context) => const ContainerView(),
        '/loadRoute' :  (context) => const LoadImageView(),
        '/studentRoute' : (context) => const StudentView(),
      },
    );
  }
}
