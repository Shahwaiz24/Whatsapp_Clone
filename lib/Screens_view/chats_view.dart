import 'package:flutter/material.dart';
import 'chatpage.dart';
import '../User_Data/chats_model.dart';

class Chat_View extends StatefulWidget {
  const Chat_View({super.key});

  @override
  State<Chat_View> createState() => _Chat_ViewState();
}

int? user_index;

class _Chat_ViewState extends State<Chat_View> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      user_index = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ChatsPage_View(
                title: names[_selectedIndex].toString(),
                profilephoto: profile[_selectedIndex].toString(),
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemBuilder: (context, index) {
          pindex = index;
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profile[index].toString()),
            ),
            title: Text(names[index]),
            titleTextStyle: const TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
            subtitle: Text(subtitles[index]),
            trailing: Column(
              children: [
                Text(
                  time[index],
                  style:  TextStyle(
                      color: Colors.grey[700], fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colors.greenAccent[700],
                  radius: 10,
                  child: index % 2 == 0
                      ? const Text(
                          "1",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                          
                        )
                      : const Text("2", style: TextStyle(fontSize: 12, color: Colors.white)),
                ),
              ],
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

int? pindex;
