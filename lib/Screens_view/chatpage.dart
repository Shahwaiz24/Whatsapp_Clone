import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Calling_Section/calling.dart';
// ignore: unused_import
import '../User_Data/chats_model.dart';
// ignore: unused_import
import 'chats_view.dart';

// ignore: camel_case_types
class ChatsPage_View extends StatefulWidget {
  final String title;
  final String profilephoto;

  const ChatsPage_View({
    super.key,
    required this.title,
    required this.profilephoto,
  });
  static const String id = 'ChatsPage_View';

  @override
  State<ChatsPage_View> createState() => _ChatsPage_ViewState();
}

class _ChatsPage_ViewState extends State<ChatsPage_View> {
  final _controller = TextEditingController();
  final List<String> _messages = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(64),
              child: AppBar(
                elevation: 0,
                backgroundColor: Colors.teal,
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 2),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                leadingWidth: 20,
                title: Padding(
                  padding: const EdgeInsets.only(top: 6, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(widget.profilephoto),
                        radius: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: const TextStyle(
                                  fontSize: 19,
                                  fontFamily: 'Helvetica',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Online',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Helvetica',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.8)),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AudioCall()));
                      },
                      child: const Icon(
                        CupertinoIcons.video_camera_solid,
                        size: 33,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AudioCall()));
                      },
                      child: const Icon(
                        Icons.call,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 5, left: 4),
                    child: InkWell(
                      onTap: () {},
                      child: PopupMenuButton(
                          icon: const Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          ),
                          itemBuilder: (context) => const [
                                PopupMenuItem(
                                  value: '1',
                                  child: Text('Settings'),
                                ),
                                PopupMenuItem(
                                    value: '2', child: Text('Clear Chat')),
                                PopupMenuItem(value: '3', child: Text('Delete'))
                              ]),
                    ),
                  )
                ],
              )),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/564x/3a/34/67/3a3467730838a1244e2217be80cf6f6a.jpg'),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                const SizedBox(
                  height: 14,
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(.5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: const Padding(
                      padding:
                          EdgeInsets.only(top: 4, bottom: 4, right: 5, left: 8),
                      child: Text(
                        'Messages you send to this chat and calls are now secured with end-to-end-encryption. Tap for more info',
                        style: TextStyle(fontSize: 13),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: _messages
                        .map((message) => Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen[200],
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 5, bottom: 5, left: 5),
                                    child: Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          message,
                                          textAlign: TextAlign.right,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 5, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.emoji_emotions_outlined,
                                    color: Colors.grey,
                                  )),
                              Expanded(
                                child: TextFormField(
                                  controller: _controller,
                                  decoration: const InputDecoration(
                                    hintText: 'Type Something',
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(color: Colors.grey),
                                  ),
                                  maxLines: null,
                                  keyboardType: TextInputType.multiline,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.attach_file)),
                              const SizedBox(
                                width: 3,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera_alt_outlined))
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.send,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          final message = _controller.text;
                          if (message.isNotEmpty) {
                            setState(() {
                              _messages.add(message);
                              _controller.clear();
                            });
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
