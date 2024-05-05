import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Screens_view/calls_view.dart';
import '../User_Data/chats_model.dart';

bool ismusic = true;
bool ismic = true;
bool isvideo = true;

class ForCallSection extends StatefulWidget {
  const ForCallSection({super.key});

  @override
  State<ForCallSection> createState() => _ForCallSectionState();
}

class _ForCallSectionState extends State<ForCallSection> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25,
                  )),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(profile[selectedIndex]),
                      radius: 50,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      names[selectedIndex],
                      style: const TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    names[selectedIndex] * 2 == 0
                        ? const Text('Ringing',
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white))
                        : const Text('Calling',
                            style: TextStyle(
                                fontFamily: 'Helvetica',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                  ],
                ),
              ),
             const SizedBox(height: 300,),
              Expanded(
                child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.teal[900],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color:
                                  ismusic ? Colors.teal[900] : Colors.teal[600],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ismusic = !ismusic;
                                  });
                                },
                                icon: const Icon(
                                  Icons.music_note_rounded,
                                  color: Colors.white,
                                )),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color:
                                  ismic ? Colors.teal[900] : Colors.teal[600],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    ismic = !ismic;
                                  });
                                },
                                icon: const Icon(
                                  Icons.mic_off,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color:
                                  isvideo ? Colors.teal[900] : Colors.teal[600],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isvideo = !isvideo;
                                  });
                                },
                                icon: const Icon(
                                  CupertinoIcons.video_camera_solid,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.red[800],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.call_end,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
