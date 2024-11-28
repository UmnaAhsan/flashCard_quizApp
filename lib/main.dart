import 'package:flash_card_quiz_app/flascard_question.dart';
import 'package:flash_card_quiz_app/flashcard.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  List<Flashcard> _flashcards = [
    Flashcard(question: "What language does flutter uses?", answer: "Dart"),
    Flashcard(question: "What language does React uses?", answer: "JavaScript"),
    Flashcard(
        question: "What language does Angular uses?", answer: "JavaScript"),
    Flashcard(
        question: "What language does Electron uses?", answer: "JavaScript"),
    Flashcard(
        question: "What language does React Native uses?",
        answer: "JavaScript"),
  ];

  int _currIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey,
              title: Center(
                  child: Text(
                'FlashCard Quiz',
                style: TextStyle(
                    fontFamily: 'FontMain', fontWeight: FontWeight.bold),
              )),
            ),
            backgroundColor: const Color.fromARGB(255, 5, 36, 61),
            body: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: FlipCard(
                        front: FlashCard(
                          text: _flashcards[_currIndex].question,
                        ),
                        back: FlashCard(
                          text: _flashcards[_currIndex].answer,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                          ),
                          onPressed: nextCard,
                          child: Row(
                            children: [
                              Icon(Icons.chevron_left),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Prev',
                                style: TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: nextCard,
                          child: Row(
                            children: [
                              Text(
                                'Next',
                                style: TextStyle(
                                    fontFamily: 'FontMain',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.chevron_right)
                            ],
                          ),
                        ),
                        // ElevatedButton.icon(
                        //   onPressed: previousCard,
                        //    label: Text('Prev',style: TextStyle(fontFamily: 'FontMain',fontWeight: FontWeight.w700),),
                        //   icon: Icon(Icons.chevron_left)),

                        //   ElevatedButton.icon(style: ElevatedButton.styleFrom(),
                        // onPressed: nextCard,
                        //  label: Text('Next',style: TextStyle(fontFamily: 'FontMain',fontWeight: FontWeight.w700),),
                        // icon: Icon(Icons.chevron_right))
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    // Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //   Container(height: 40,width: 300,decoration: BoxDecoration(color: Colors.white,
                    //     borderRadius: BorderRadius.circular(20),boxShadow:
                    //      [BoxShadow(color: Colors.grey,blurRadius: 1)]),
                    //      child: Padding(
                    //        padding: const EdgeInsets.all(10),
                    //        child: Row(children: [
                    //         Text("a"),SizedBox(width: 15,),
                    //         Text("30%")
                    //        ],),
                    //      ),),SizedBox(height: 11,),
                    //        Container(height: 40,width: 300,decoration: BoxDecoration(color: Colors.white,
                    //     borderRadius: BorderRadius.circular(20),boxShadow:
                    //      [BoxShadow(color: Colors.grey,blurRadius: 1)]),
                    //      child: Padding(
                    //        padding: const EdgeInsets.all(10),
                    //        child: Row(children: [
                    //         Text("a"),SizedBox(width: 15,),
                    //         Text("30%")
                    //        ],),
                    //      ),),SizedBox(height: 11,),
                    //        Container(height: 40,width: 300,decoration: BoxDecoration(color: Colors.white,
                    //     borderRadius: BorderRadius.circular(20),boxShadow:
                    //      [BoxShadow(color: Colors.grey,blurRadius: 1)]),
                    //      child: Padding(
                    //        padding: const EdgeInsets.all(10),
                    //        child: Row(children: [
                    //         Text("a"),SizedBox(width: 15,),
                    //         Text("30%")
                    //        ],),
                    //      ),),SizedBox(height: 11,),
                    //        Container(height: 40,width: 300,decoration: BoxDecoration(color: Colors.white,
                    //     borderRadius: BorderRadius.circular(20),boxShadow:
                    //      [BoxShadow(color: Colors.grey,blurRadius: 1)]),
                    //      child: Padding(
                    //        padding: const EdgeInsets.all(10),
                    //        child: Row(children: [
                    //         Text("a"),SizedBox(width: 15,),
                    //         Text("30%")
                    //        ],),
                    //      ),)
                    // ],)
                  ],
                ),
              ),
            )));
  }

  void nextCard() {
    setState(() {
      _currIndex = (_currIndex + 1 < _flashcards.length) ? _currIndex + 1 : 0;
    });
  }

  void previousCard() {
    setState(() {
      _currIndex =
          (_currIndex - 1 >= 0) ? _currIndex - 1 : _flashcards.length - 1;
    });
  }
}
