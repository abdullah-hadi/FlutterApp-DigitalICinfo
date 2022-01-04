import 'package:flutter/material.dart';
import 'package:gproject/country_model.dart';
import 'package:gproject/screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _ICInfo = [];

    _ICInfo.add(Country(
        name: "AND",
        number: 7408,
        input: 2,
        imagelink: 'https://m.media-amazon.com/images/I/21QK3GTJiDL.jpg',
        table:
            "https://www.allaboutcircuits.com/uploads/articles/two-input-and-gate-truth-table.jpg",
        info:
            "One of the easiest multiple-input gates to understand is the AND gate, so-called because the output of this gate will be “high” (1) if and only if all inputs are “high” (1). If any input(s) is “low” (0), the output is guaranteed to be in a “low” state as well."));
    _ICInfo.add(Country(
      name: "OR",
      number: 7432,
      input: 2,
    ));
    _ICInfo.add(Country(
        name: "NOT",
        number: 7404,
        input: 4,
        imagelink: 'https://m.media-amazon.com/images/I/51YaASDEIUL.jpg',
        table:
            "https://2.bp.blogspot.com/-Et8GaYPyf7Q/WCPhyFaaivI/AAAAAAAAAEE/EuZOnG_Hr3UY4NsvSy9jpBdnhKLYGlRhgCEw/s1600/not%2Bgate.png",
        info:
            "NOT gates are single input devicse which have an output level that is normally at logic level “1” and goes “LOW” to a logic level “0” when its single input is at logic level “1”"));
    _ICInfo.add(Country(name: "NAND", number: 7400, input: 2));
    _ICInfo.add(Country(name: "NOR", number: 7402, input: 2));
    _ICInfo.add(Country(name: "XOR", number: 7486, input: 2));
    _ICInfo.add(Country(name: "XNOR", number: 74266, input: 2));

    _ICInfo.add(Country(name: "Full Adder", number: 7483, input: 4));
    _ICInfo.add(Country(name: "Bistable Latch", number: 7477, input: 4));
    _ICInfo.add(Country(name: "8:3 Encoder", number: 74148, input: 8));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 21,
        //foregroundColor: Colors.cyanAccent,
        shadowColor: Colors.pinkAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        centerTitle: true,
        foregroundColor: Colors.black,
        title: Text('IC Chart'),
        actions: [
          Icon(Icons.settings),
          Icon(Icons.more_vert),
        ],
        leading: Icon(Icons.home),
      ),
      backgroundColor: Colors.yellowAccent,
      body: ListView.builder(
          padding: const EdgeInsets.only(top: 20.0),
          itemCount: _ICInfo.length,
          itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            stu: _ICInfo[index],
                          )),
                ),
                child: Card(
                  elevation: 30,
                  shadowColor: Colors.cyanAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)),
                  //color: Colors.purpleAccent,
                  child: ListTile(
                    title: Text(
                      _ICInfo[index].name,
                      style: TextStyle(
                          //color: Colors.white,
                          ),
                    ),
                    subtitle: Text(_ICInfo[index].number.toString()),
                    trailing: Text(_ICInfo[index].input.toString() + " input"),
                  ),
                ),
              )),
    );
  }
}
