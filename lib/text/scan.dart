// import 'package:flutter/material.dart';
// // import 'dart:async';

// import 'package:flutter/services.dart';
// import 'package:flutter_genius_scan/flutter_genius_scan.dart';

// import 'package:open_file/open_file.dart';

// // class Scan extends StatefulWidget {
// //   @override
// //   _ScanState createState() => _ScanState();
// // }

// // class _ScanState extends State<Scan> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //           appBar: AppBar(
// //             title: const Text('GS SDK Flutter Demo'),
// //           ),
// //           body: MyScaffoldBody()),
// //     );
// //   }
// // }

// class MyScaffoldBody extends StatelessWidget {
//   @override
//    FlutterGeniusScan.scanWithConfiguration({
//           'source': 'camera',
//           'multiPage': true,
//         }).then((result) {
//           String pdfUrl = result['pdfUrl'];
//           OpenFile.open(pdfUrl.replaceAll("file://", '')).then(
//               (result) => debugPrint(result.toString()),
//               onError: (error) => displayError(context, error));
//         }, onError: (error) => displayError(context, error));

//   // Widget build(BuildContext context) {
//   //   return Center(
//   //       child: RaisedButton(
//   //     onPressed: () {
//   //       FlutterGeniusScan.scanWithConfiguration({
//   //         'source': 'camera',
//   //         'multiPage': true,
//   //       }).then((result) {
//   //         String pdfUrl = result['pdfUrl'];
//   //         OpenFile.open(pdfUrl.replaceAll("file://", '')).then(
//   //             (result) => debugPrint(result.toString()),
//   //             onError: (error) => displayError(context, error));
//   //       }, onError: (error) => displayError(context, error));
//   //     },
//   //     child: Text("START SCANNING"),
//   //   ));
//   // }

//   void displayError(BuildContext context, PlatformException error) {
//     Scaffold.of(context).showSnackBar(SnackBar(content: Text(error.message)));
//   }
// }
