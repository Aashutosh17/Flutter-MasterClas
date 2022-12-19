import 'package:flutter/material.dart';
import 'package:smartphone/Screen/ArithemeticOutput.dart';
import 'package:smartphone/Screen/add.dart';
import 'package:smartphone/Screen/calculator.dart';
import 'package:smartphone/Screen/column_screen.dart';
import 'package:smartphone/Screen/datatable_screen.dart';
import 'package:smartphone/Screen/display_Screen.dart';
import 'package:smartphone/Screen/flexible.dart';
import 'package:smartphone/Screen/gridview_Screen.dart';
import 'package:smartphone/Screen/image_screen.dart';
import 'package:smartphone/Screen/loginpage.dart';
import 'package:smartphone/Screen/radiobuttonlist.dart';
import 'package:smartphone/Screen/simpleInterest.dart';
import 'package:smartphone/Screen/snackbar.dart';
import 'package:smartphone/Screen/stackscreen.dart';
import 'package:smartphone/Screen/student_screen.dart';
import 'package:smartphone/bottom_screen/dashboard.dart';
import 'Screen/card_screen.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter for class',
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginScreen(),
          '/SnackBar': (context) => const SnackBarScreen(),
          '/flexible': (context) => const flexible(),
          '/ImageScreen': (context) => const ImageScreen(),
          '/StudentDetails': (context) => const StudentDetailsScreen(),
          '/displayStudent': ((context) => const Displaystudentscreen()),
          '/Listtile': (context) => const ListTile(),
          '/ColumnScreen': (context) => const ColumnScreen(),
          '/ArthmeticScreen': (context) => const ArithmeticScreen(),
          '/RadioButton': (context) => const RadionButton(),
          '/Arithemticoutput': (context) => const ArithmeticOutputScreen(),
          '/simpleInterest': (context) => const Simpleinterest(),
          '/CardScreen': ((context) => const CardScreen()),
          '/GridviewScreen': ((context) => const GridScreen()),
          '/dalculator': ((context) => const Calculator()),
          '/datatable': ((context) => const DataTableScreen()),
          '/stackScreen': ((context) => const StackScreen()),
          '/Dashboard': ((context) => const Dashboard()),
          '/Login': ((context) => const LoginScreen()),
        }),
  );
}
