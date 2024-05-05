import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_camera/whatsapp_camera.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        const SizedBox(
          height: 170,
        ),
        Center(
            child: Text(
          'Capture Picture\'s',
          style: TextStyle(
              fontFamily: 'Helvetica',
              color: Colors.grey[700],
              fontSize: 25,
              fontWeight: FontWeight.w600),
        )),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            'Click Icon Below ',
            style: TextStyle(
              fontFamily: 'Helvetica',
              color: Colors.greenAccent[700],
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: GestureDetector(
            onTap: () async {
              // ignore: unused_local_variable
              List<File>? res = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WhatsappCamera(),
                ),
              );
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.greenAccent[700]),
              child: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
