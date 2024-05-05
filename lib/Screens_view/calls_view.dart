import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Calling_Section/calling2.dart';
import '../User_Data/chats_model.dart';

class Calls_View extends StatefulWidget {
  const Calls_View({super.key});

  @override
  State<Calls_View> createState() => _Calls_ViewState();
}

int selectedIndex = 0;

class _Calls_ViewState extends State<Calls_View> {
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ForCallSection()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profile[index].toString()),
              radius: 25,
            ),
            title: Text(names[index]),
            titleTextStyle: const TextStyle(fontWeight: FontWeight.w600),
            subtitle: index % 2 == 0
                ? Text('Missed Audio Call at ${time[index]}')
                : Text('Missed Video Call at ${time[index]}'),
            trailing: index % 2 == 0
                ? const Icon(
                    Icons.call,
                    color: Colors.teal,
                  )
                : const Icon(
                    CupertinoIcons.video_camera_solid,
                    color: Colors.teal,
                  ),
            onTap: () {
              _onItemTapped(index);
            },
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
