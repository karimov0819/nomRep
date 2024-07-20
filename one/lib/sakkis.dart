import 'package:flutter/material.dart';

class sakkis extends StatefulWidget {
  const sakkis({super.key});

  @override
  State<sakkis> createState() => _sakkisState();
}

class _sakkisState extends State<sakkis> {
  int inom = 0;
  Color rang = Colors.blue;
  Color sariq = Colors.amber;
  Color oq = Colors.green;
  String m = "Eat more frequneey";
  String n = "choose nutfree foods";
  String b = "Extrice";
  void vnom() {
    setState(() {
      if (inom == 1) {
        rang = Colors.red;
        sariq = Colors.grey;
        oq = Colors.purple;
        m = "Karimov";
        n = "Muxammadrizo";
        b = "2009";
      } else if (inom == 2) {
        rang = Colors.orange;
        sariq = Colors.pink;
        oq = Colors.blue;
        m = "Olimov";
        n = "Sarvar";
        b = "2009";
      } else if (inom == 3) {
        rang = Colors.yellow;
        sariq = Colors.green;
        oq = Colors.red;
        m = "Bahodirov";
        n = "Azizbek";
        b = "2009";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 122, 194, 253),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(onTap: (){
                    Navigator.pop(context);
                  }, child: Icon(Icons.swipe_left_alt)),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    "Results",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Your BMI is"),
                        Text(
                          "Normal",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ],
                    ),
                    Text(
                      "22.5",
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w900,
                          fontSize: 50),
                    ),
                    Text("The body mass index {BMI} is a value"),
                    Text("derived from the mass {weight} and height"),
                    Text("of an individiual"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(10)),
                              color: Colors.grey),
                          width: 60,
                          height: 12,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Container(
                          width: 60,
                          height: 12,
                          color: const Color.fromRGBO(76, 175, 80, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 27),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  width: 10,
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Container(
                          width: 60,
                          height: 12,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Container(
                          width: 60,
                          height: 12,
                          color: Color.fromARGB(255, 238, 180, 7),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(10)),
                            color: Colors.red,
                          ),
                          width: 60,
                          height: 12,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 125),
                          child: Text(
                            "183",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: 37,
                        ),
                        Text(
                          "145",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 39,
                        ),
                        Text(
                          "254",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "348",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white),
                width: double.infinity,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Here are some healthy ways to gain weight"),
                      Text("when youre underweight:"),
                      SizedBox(
                        height: 10,
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: rang),
                              width: 30,
                              height: 30,
                              child: Center(
                                  child: Icon(
                                Icons.watch_later_outlined,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "$m",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              inom = 2;
                              vnom();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: sariq),
                              width: 30,
                              height: 30,
                              child: Center(
                                  child: Icon(
                                Icons.watch_later_outlined,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "$n",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              inom = 3;
                              vnom();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: oq),
                              width: 30,
                              height: 30,
                              child: Center(
                                  child: Icon(
                                Icons.watch_later_outlined,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "$b",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
