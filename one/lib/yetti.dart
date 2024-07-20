import 'package:flutter/material.dart';
import 'package:one/sakkis.dart';


class yetti extends StatefulWidget {
  const yetti({super.key});

  @override
  State<yetti> createState() => _yettiState();
}

class _yettiState extends State<yetti> {
  int inom = 0;
  Color rang = Colors.white;
  Color sariq = Colors.white;
  Color oq = Colors.black;
  Color qora = Colors.black;
  String m = "rizoxon/11.png";
  void vnom() {
    setState(() {
      if (inom == 1) {
        rang = Colors.purple;
        sariq = Colors.white;
        oq = Colors.white;
        qora = Colors.black;
        m = "rizoxon/8.jpg";
      } else if (inom == 2) {
        rang = Colors.white;
        sariq = Colors.purple;
        oq = Colors.black;
        qora = Colors.white;
        m = "rizoxon/10.jpg";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 194, 253),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: [
              Icon(Icons.settings),
              SizedBox(
                width: 135,
              ),
              Text(
                "BMI Calculator",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 130,
              ),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => yetti()));
              }, child: Icon(Icons.settings_backup_restore_outlined))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  inom = 1;
                  vnom();
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: rang),
                  width: 240,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        inom = 1;
                        vnom();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: oq,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(color: oq),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  inom = 2;
                  vnom();
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: sariq),
                  width: 240,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        inom = 2;
                        vnom();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: qora,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(color: qora),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 250,
            color: Color.fromARGB(255, 99, 175, 238),
            child: Image.asset(
              m,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white),
            width: double.infinity,
            height: 240,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.blue),
                        width: 30,
                        height: 30,
                        child: Center(
                            child: Icon(
                          Icons.watch_later_outlined,
                          color: Colors.white,
                        )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Weight",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 285,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.purple),
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Color.fromARGB(255, 158, 211, 255)),
                        width: 70,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("83"),
                            Text(
                              "nfn",
                              style: TextStyle(color: Colors.purple),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.amber),
                        width: 30,
                        height: 30,
                        child: Center(
                            child: Icon(
                          Icons.watch,
                          color: Colors.white,
                        )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 285,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.purple),
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Color.fromARGB(255, 158, 211, 255)),
                        width: 70,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("1,76"),
                            Text(
                              "bhj",
                              style: TextStyle(color: Colors.purple),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.green),
                        width: 30,
                        height: 30,
                        child: Center(
                            child: Icon(
                          Icons.align_vertical_bottom_sharp,
                          color: Colors.white,
                        )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Age",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 305,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.purple),
                            borderRadius: BorderRadius.all(Radius.circular(9)),
                            color: Color.fromARGB(255, 158, 211, 255)),
                        width: 70,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("28"),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sakkis()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.purple),
                      width: 200,
                      height: 40,
                      child: Center(
                          child: Text(
                        "Calculater",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
