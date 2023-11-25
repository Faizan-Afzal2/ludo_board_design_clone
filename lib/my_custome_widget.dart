import 'package:flutter/material.dart';

class BigContainer extends StatelessWidget {
  Color? color;
  BigContainer({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: color,
          height: 240,
          width: 240,
        ),
        Positioned(
            child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              height: 150,
              width: 150,
            ),
            Positioned(
              top: 15,
              left: 15,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 20,
              ),
            ),
            Positioned(
              top: 15,
              right: 15,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 20,
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 20,
              ),
            ),
            Positioned(
              bottom: 15,
              right: 15,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 20,
              ),
            )
          ],
        ))
      ],
    );
  }
}

class SmallContainer extends StatelessWidget {
  Color? color;
  int id;
  SmallContainer({super.key, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 120,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 18,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                  color: _isColor(index, id)
                      ? color
                      : const Color.fromARGB(255, 236, 236, 236),
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignInside,
                      color: Colors.black,
                      width: 0.1),
                ),
                child: (index == 1 && id == 1)
                    ? Image.asset("assets/icons/1.png",
                    color: Colors.green[700],)
                    : (index == 6 && id == 1)
                        ? Image.asset("assets/icons/8.png")
                        : (index == 16 && id == 2)
                            ? Image.asset("assets/icons/3.png")
                            : (index == 11 && id == 2)
                                ? Image.asset("assets/icons/6.png")
                                : Text(""));
          }),
    );
  }
}

class SmallContainer2 extends StatelessWidget {
  Color? color;
  int id;
  SmallContainer2({super.key, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 240,
      child: GridView.builder(
          itemCount: 18,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1,
            crossAxisCount: 6,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: _isColor(index, id) ? color : const Color.fromARGB(255, 236, 236, 236),
                border: Border.all(
                    strokeAlign: BorderSide.strokeAlignInside,
                    color: Colors.black,
                    width: 0.1),
              ),
              child: (index == 6 && id == 0)
                  ? Image.asset("assets/icons/2.png",color: Colors.red[700],)
                  : (index == 14 && id == 0)
                      ? Image.asset("assets/icons/5.png")
                      : (index == 11 && id == 3)
                          ? Image.asset("assets/icons/4.png",
                          color: Colors.blue[700],)
                          : (index == 3 && id == 3)
                              ? Image.asset("assets/icons/7.png")
                              : Text("")
            );
          }),
    );
  }
}

class CenterContainer extends StatelessWidget {
  const CenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 120,
          color: const Color.fromARGB(255, 236, 236, 236),
        ),
        // Green
        Positioned(
          left: 25,
          top: -39,
          child: CircleAvatar(
            backgroundColor: Colors.green[700],
            radius: 35,
          ),
        ),

        // Red
        Positioned(
          left: -39,
          top: 25,
          child: CircleAvatar(
            backgroundColor: Colors.red[700],
            radius: 35,
          ),
        ),
        // Blue
        Positioned(
          right: -39,
          top: 25,
          child: CircleAvatar(
            backgroundColor: Colors.blue[700],
            radius: 35,
          ),
        ),
        // Yellow
        Positioned(
          bottom: -39,
          left: 25,
          child: CircleAvatar(
            backgroundColor: Colors.yellow[700],
            radius: 35,
          ),
        ),
      ],
    );
  }
}

bool _isColor(int index, int id) {
  switch (id) {
    case 0:
      // In case of red color
      switch (index) {
        case 1:
          return true;
        case 7:
          return true;
        case 8:
          return true;
        case 9:
          return true;
        case 10:
          return true;
        case 11:
          return true;
        default:
          return false;
      }
    case 1:
      // In case of green color
      switch (index) {
        case 4:
          return true;
        case 5:
          return true;
        case 7:
          return true;
        case 10:
          return true;
        case 13:
          return true;
        case 16:
          return true;
        default:
          return false;
      }
    case 2:
      // In case of yellow color
      switch (index) {
        case 4:
          return true;
        case 12:
          return true;
        case 7:
          return true;
        case 10:
          return true;
        case 13:
          return true;
        case 1:
          return true;

        default:
          return false;
      }
    case 3:
      // In case of blue color
      switch (index) {
        case 6:
          return true;
        case 8:
          return true;
        case 7:
          return true;
        case 9:
          return true;
        case 10:
          return true;
        case 16:
          return true;
        default:
          return false;
      }

    default:
      return true;
  }
}
