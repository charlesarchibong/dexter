import 'package:dexter_health/src/presentation/pages/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShiftScreen extends StatefulWidget {
  const ShiftScreen({Key? key}) : super(key: key);

  @override
  State<ShiftScreen> createState() => _ShiftScreenState();
}

class _ShiftScreenState extends State<ShiftScreen> {
  String shiftStatus = 'ACTIVE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.blue[900],
                  )),
              Text(
                'Welcome Back, Kosi...',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.teal[600],
                ),
              ),
              Center(
                child: Image.asset('assets/images/nurses2.png', fit: BoxFit.cover, height: 160, width: 160),
              ),
              const Gap(20),
              Text(
                'Shifts:',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.blue[900],
                ),
              ),
              const Gap(10),
              Text(
                'Today:',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              const Gap(20),
              InkWell(
                onTap: () {
                  if (shiftStatus == 'END') {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              content: const Text('This shift has ended but you still have pending actions, do you wish to rollover?'),
                              actions: [
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'NO',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'YES',
                                    style: TextStyle(
                                      color: Colors.teal[500],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ));
                  } else if (shiftStatus == 'ACTIVE') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ToDoScreen(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: const Text('This shift is not yet active.'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'OK',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                        ],
                      ),
                    );
                  }
                },
                child: roundRectangle(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '2pm to 9:30pm',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '8th December, 2022',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 101,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            border: Border.all(
                              color: const Color(0xFF0D47A1),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                            child: Center(
                              child: Text(
                                shiftStatus,
                                //TODO: implement the shiftstatus so it's red color when it ends
                                style: TextStyle(
                                  color: Colors.teal[600],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(30),
              Text(
                'Tomorrow:',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              const Gap(20),
              InkWell(
                onTap: () {
                  if (shiftStatus == 'END') {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              content: const Text('This shift has ended but you still have pending actions, do you wish to rollover?'),
                              actions: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'NO',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'YES',
                                    style: TextStyle(
                                      color: Colors.teal[500],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ));
                  } else if (shiftStatus == 'ACTIVE') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ToDoScreen()));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: const Text('This shift is not yet active.'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'OK',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                        ],
                      ),
                    );
                  }
                },
                child: roundRectangle(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '2pm to 9:30pm',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '8th December, 2022',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 101,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            border: Border.all(
                              color: const Color(0xFF0D47A1),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                            child: Center(
                              child: Text(
                                'PENDING',
                                //TODO: implement the shift status for this so it's this color when it's pending and also display pop up when clicked
                                style: TextStyle(
                                  color: Colors.amber[700],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Row(
                children: [
                  Icon(
                    Icons.info,
                    color: Colors.grey[400],
                    size: 20,
                  ),
                  const Gap(16),
                  const Text(
                    'Click on any shift to add tasks.',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget roundRectangle({
    required double height,
    required Widget child,
  }) {
    return Container(
      width: 388,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(
          color: const Color(0xFF0D47A1),
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: child,
    );
  }
}
