import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({
    Key? key,
  }) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  bool turn = true;
  List<String> exo = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
        shrinkWrap: true,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              child: Center(
                  child: Text(
                exo[index],
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
            ),
            onTap: () {
              _tapped(index);
              winner();
            },
           
          );
         
        });
  }

  void _tapped(index) {
    setState(() {
      if (turn == true) {
        exo[index] = "X";
      } else {
        exo[index] = "0";
      }
      turn = !turn;
    });
  }

  void winner() {
    if (exo[0] == exo[1] && exo[0] == exo[2] && exo[0] != "") {
      showdialogue();
    }
    if (exo[3] == exo[4] && exo[3] == exo[5] && exo[3] != "") {
      showdialogue();
    }
    if (exo[6] == exo[7] && exo[6] == exo[8] && exo[6] != "") {
      showdialogue();
    }
    //column
    if (exo[0] == exo[3] && exo[0] == exo[6] && exo[0] != "") {
      showdialogue();
    }
    if (exo[1] == exo[4] && exo[1] == exo[7] && exo[1] != "") {
      showdialogue();
    }
    if (exo[2] == exo[5] && exo[2] == exo[8] && exo[2] != "") {
      showdialogue();
    }
    //diagonal
    if (exo[0] == exo[4] && exo[0] == exo[8] && exo[0] != "") {
      showdialogue();
    }
    if (exo[2] == exo[4] && exo[2] == exo[6] && exo[2] != "") {
      showdialogue();
    }
  }

  void resetbutton() {
     TextButton(
        onPressed: () {
          setState(() {
            exo[0] = "";
            exo[1] = "";
            exo[2] = "";
            exo[3] = "";
            exo[4] = "";
            exo[5] = "";
            exo[6] = "";
            exo[7] = "";
            exo[8] = "";
          });
        },
        child: Text(
          "RESET",
          style: TextStyle(color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ));
   
  }

  void showdialogue() {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
              title: Text("Game Ended"),
              backgroundColor: Colors.white,
              content: Container(
                height: 40,
                width: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        exo[0] = "";
                        exo[1] = "";
                        exo[2] = "";
                        exo[3] = "";
                        exo[4] = "";
                        exo[5] = "";
                        exo[6] = "";
                        exo[7] = "";
                        exo[8] = "";
                      });
                    },
                    child: Text(
                      "PLAY AGAIN",
                      style: TextStyle(color: Colors.black),
                    )),
              ));
        });
  }
}
