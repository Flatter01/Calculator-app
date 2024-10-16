// import 'package:calculator/Tap/Tap_1.dart';
// import 'package:calculator/Tap/tap_2.dart';
// import 'package:calculator/Tap/tap_3.dart';
// import 'package:calculator/Tap/tap_4.dart';
// import 'package:calculator/Tap/tap_5.dart';

import 'package:calculator/bloc/counter_bloc.dart';
import 'package:calculator/bloc/counter_event.dart';
import 'package:calculator/bloc/counter_state.dart';
import 'package:calculator/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatorsPage extends StatefulWidget {
  const CalculatorsPage({super.key});

  @override
  State<CalculatorsPage> createState() => _CalculatorsPageState();
}

class _CalculatorsPageState extends State<CalculatorsPage> {
  Color buttonColor = Colors.orange;
  Color buttonColor2 = Colors.orange;
  Color buttonColor3 = Colors.orange;
  Color buttonColor4 = Colors.orange;
  Color buttonColor5 = Colors.orange;

  @override
  Widget build(BuildContext context) {
    // final textsBloc = BlocProvider.of<TextBloc>(context);
    return BlocProvider(
      create: (context) => TextBloc(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: BlocBuilder<TextBloc, TextState>(
          builder: (context, state) {
            if (state is TextInitial) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        state.text.toString(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 100),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          // textsBloc.add(WriteEvent(newText: 9));
                          context
                              .read<TextBloc>()
                              .add(WriteEvent(newText: "0"));
                        },
                        butText: 'AC',
                        butColors: Colors.grey,
                        textColors: Colors.black,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          context.read<TextBloc>().add(
                                WriteEvent(
                                  // newText: state.parse(state.text) - (state.text * 2),
                                  newText: "-${state.text}",
                                ),
                              );
                        },
                        butText: '+/-',
                        butColors: Colors.grey,
                        textColors: Colors.black,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {},
                        butText: '%',
                        butColors: Colors.grey,
                        textColors: Colors.black,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          context
                              .read<TextBloc>()
                              .add(WriteFunctionEvent(func: '/'));
                        },
                        butText: '/',
                        butColors: context.watch<TextBloc>().buttonColors[0],
                        textColors: context.watch<TextBloc>().buttonColors[0] ==
                                Colors.white
                            ? Colors.black
                            : Colors.white,
                        butWidth: 90,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "7"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "7"));
                          }
                        },
                        butText: '7',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "8"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "8"));
                          }
                        },
                        butText: '8',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "9"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "9"));
                          }
                        },
                        butText: '9',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                              context
                              .read<TextBloc>()
                              .add(WriteFunctionEvent(func: 'x'));
                        },
                        butText: 'x',
                        butColors: context.watch<TextBloc>().buttonColors[1],
                        textColors: context.watch<TextBloc>().buttonColors[1] ==
                                Colors.white
                            ? Colors.black
                            : Colors.white,
                        butWidth: 90,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "4"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "4"));
                          }
                        },
                        butText: '4',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "5"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "5"));
                          }
                        },
                        butText: '5',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "6"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "6"));
                          }
                        },
                        butText: '6',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          context
                              .read<TextBloc>()
                              .add(WriteFunctionEvent(func: '-'));
                        },
                        butText: '-',
                        butColors: context.watch<TextBloc>().buttonColors[2],
                        textColors: context.watch<TextBloc>().buttonColors[2] ==
                                Colors.white
                            ? Colors.black
                            : Colors.white,
                        butWidth: 90,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "1"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "1"));
                          }
                        },
                        butText: '1',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "2"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "2"));
                          }
                        },
                        butText: '2',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          if (buttonColor == Colors.white ||
                              buttonColor2 == Colors.white ||
                              buttonColor3 == Colors.white ||
                              buttonColor4 == Colors.white ||
                              buttonColor5 == Colors.white) {
                            // context
                            //     .read<TextBloc>()
                            //     .add(WriteTwoEvent(newTextTow: "3"));
                          } else {
                            context
                                .read<TextBloc>()
                                .add(WriteEvent(newText: "3"));
                          }
                        },
                        butText: '3',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 12),
                      MyButton(
                        onTap: () {
                          context
                              .read<TextBloc>()
                              .add(WriteFunctionEvent(func: '+'));
                        },
                        butText: '+',
                        butColors: context.watch<TextBloc>().buttonColors[3],
                        textColors: context.watch<TextBloc>().buttonColors[3] ==
                                Colors.white
                            ? Colors.black
                            : Colors.white,
                        butWidth: 90,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      MyButton(
                        onTap: () {
                          context
                              .read<TextBloc>()
                              .add(WriteEvent(newText: "0"));
                        },
                        butText: '0',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 195,
                      ),
                      const SizedBox(width: 10),
                      MyButton(
                        onTap: () {
                          context.read<TextBloc>().add(
                                WriteEvent(
                                  newText: state.text + (state.text),
                                ),
                              );
                        },
                        butText: '.',
                        butColors: Colors.white10,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                      const SizedBox(width: 10),
                      MyButton(
                        onTap: () {
                          context.read<TextBloc>().add(ResultEvent());
                        },
                        butText: '=',
                        butColors: Colors.orange,
                        textColors: Colors.white,
                        butWidth: 90,
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }

  void a() {
    String a = "2";
    double b = double.parse(a);
    b = 1;
  }
}

// children: [
//   Row(
//     children: [
//       SizedBox(width:330),
//       Text("0",style: TextStyle(fontSize: 100,color: Colors.white),),
//     ],
//   ),
//   Tap5(),
//   SizedBox(height:10),
//   Tap4(),
//   SizedBox(height:10),
//   Tap3(),
//   SizedBox(height:10),
//   Tap2(),
//   SizedBox(height:10),
//   Tap1()
// ],
