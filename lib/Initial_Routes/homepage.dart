import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens_view/calls_view.dart';
import 'package:whatsapp_clone/Screens_view/camera_view.dart';
import 'package:whatsapp_clone/Screens_view/chats_view.dart';
import 'package:whatsapp_clone/Screens_view/status_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  static const String id = 'myHomePage';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp'),
            titleTextStyle: const TextStyle(
                color: Colors.white,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.w800,
                fontSize: 18),
            backgroundColor: Colors.teal,
            centerTitle: false,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    'CHATS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'STATUS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    'CALLS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              PopupMenuButton(
                  icon: const Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  ),
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: '1', child: Text('New Group')),
                        PopupMenuItem(value: '2', child: Text('Settings')),
                        PopupMenuItem(value: '3', child: Text('Logout'))
                      ])
            ],
          ),
          body: const TabBarView(children: [
            CameraView(),
            Chat_View(),
            Status_View(),
            Calls_View(),
          ]),
        ),
      ),
    );
  }
}
