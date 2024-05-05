import 'package:flutter/material.dart';
import '../User_Data/chats_model.dart';

class Status_View extends StatelessWidget {
  const Status_View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 23),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/5327610/pexels-photo-5327610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    radius: 22,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Column(
                    children: [
                      Text(
                        "Add Your Status",
                        style: TextStyle(
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey,
            child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Recent Updates',
                  style: TextStyle(
                      fontFamily: 'Helvetica', fontWeight: FontWeight.w500),
                )),
            height: 20,
            width: double.infinity,
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 2)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(profile[index].toString()),
                      radius: 30,
                    ),
                  ),
                  title: Text(names[index].toString()),
                  titleTextStyle: const TextStyle(
                      fontFamily: 'Helvetica', fontWeight: FontWeight.w700),
                  subtitle: Text(
                    "Updated Ago: ${time[index].toString()}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Helvetica',
                    ),
                  ),
                );
              },
              itemCount: names.length,
            ),
          )
        ],
      ),
    );
  }
}
