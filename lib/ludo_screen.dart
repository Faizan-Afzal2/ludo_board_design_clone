import 'package:flutter/material.dart';
import 'package:ludo_clone/my_custome_widget.dart';

class MyLudo extends StatelessWidget {
  const MyLudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 600,
              width: 600,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: BigContainer(color: Colors.red[700]),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: BigContainer(color: Colors.green[500]),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: BigContainer(color: Colors.yellow[700]),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: BigContainer(color: Colors.blue[700]),
            ),
            Positioned(
              left: 240,
              top: 0,
              child: SmallContainer(
                id: 1,
                color: Colors.green[700],
              ),
            ),
            Positioned(
              left: 0,
              top: 240,
              child: SmallContainer2(
                id: 0,
                color: Colors.red[700],
              ),
            ),
            Positioned(
              left: 240,
              bottom: 0,
              child: SmallContainer(
                id: 2,
                color: Colors.yellow[700],
              ),
            ),
            Positioned(
              right: 0,
              top: 240,
              child: SmallContainer2(
                id: 3,
                color: Colors.blue[700],
              ),
            ),
            CenterContainer()
          ],
        ),
      ),
    );
  }
}
