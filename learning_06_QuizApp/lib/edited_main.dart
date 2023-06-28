// import 'package:flutter/material.dart';
//
// import 'myfunc.dart';
// import 'mywidgets.dart';
// import 'questions.dart';
//
// void main() {
//   startQuiz();
//   runApp(DaQuiz());
// }
//
// class DaQuiz extends StatefulWidget {
//   const DaQuiz({super.key});
//
//   @override
//   State<DaQuiz> createState() => _DaQuizState();
// }
//
// class _DaQuizState extends State<DaQuiz> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Da Quiz'),
//           centerTitle: true,
//           backgroundColor: Colors.blueGrey[900],
//         ),
//         body: SafeArea(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 5.0),
//             child: Column(
//               children: [
//                 /// Question Container
//                 Expanded(
//                   flex: 5,
//                   child: Container(
//                     margin: EdgeInsets.all(10.0),
//                     padding: EdgeInsets.all(8.0),
//                     decoration: BoxDecoration(
//                       color: Colors.blueGrey[100],
//                       borderRadius: BorderRadius.circular(10.0),
//                       border: Border.all(
//                         width: 3.0,
//                       ),
//                     ),
//                     child: Column(
//                       children: [
//                         /// Score and icons
//                         Expanded(
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Expanded(
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: iconslist,
//                                 ),
//                               ),
//                               Align(
//                                 alignment: Alignment.topRight,
//                                 child: Container(
//                                   margin: EdgeInsets.all(3.0),
//                                   padding: EdgeInsets.all(3.0),
//                                   decoration: BoxDecoration(
//                                     color: Colors.blueGrey[900],
//                                     borderRadius: BorderRadius.circular(10.0),
//                                     border: Border.all(
//                                       width: 2.0,
//                                     ),
//                                   ),
//                                   child: Text(
//                                     'Score : $score',
//                                     style: TextStyle(
//                                       fontSize: 20.0,
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//
//                         /// Question
//                         Expanded(
//                           flex: 8,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               /// Question number
//                               Center(
//                                 child: Text(
//                                   'Question ${quesno + 1} of ${maxques + 1}',
//                                   style: TextStyle(
//                                     fontSize: 10.0,
//                                     color: Colors.grey,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(height: 10.0),
//
//                               /// Question
//                               Center(
//                                 child: Text(
//                                   // question is at index 0 of daques where quesinorder[quesno]
//                                   // is the index of question no in daques
//                                   daques[quesinorder[quesno]][0],
//                                   style: TextStyle(
//                                     fontSize: 20.0,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 5.0),
//
//                 /// Row 1 button 1,2
//                 genrow(btn1: 0, btn2: 1),
//                 const SizedBox(height: 5.0),
//
//                 /// Row 2 button 2,3
//                 genrow(btn1: 2, btn2: 3, onPressed: onPressed),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
