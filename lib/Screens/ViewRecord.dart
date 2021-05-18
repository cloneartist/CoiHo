import 'package:coho/Models/Patient.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ViewRecord extends StatefulWidget {
  @override
  _ViewRecordState createState() => _ViewRecordState();
}

class _ViewRecordState extends State<ViewRecord> {
  // List itemList = [
  //   "Name",
  //   ":",
  //   "sdsd",
  //   "sdsfsds",
  //   ":",
  //   "sdsdsdsd",
  //   "sdsfsdsds",
  //   ":",
  //   "sdsdsthfdsd",
  // ];
  List<Track> vehicles = [
    new Track(
      pressure: "s",
      pulse: "s",
      respirRate: "sd",
      spO2: "s",
      temp: "sd",
      time: "sd",
    ),
    new Track(
      pressure: "s",
      pulse: "s",
      respirRate: "sd",
      spO2: "s",
      temp: "sd",
      time: "sd",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name"),
                      Text("Age"),
                      Text("Phone"),
                      Text(" "),
                      Text(" "),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(":"),
                      Text(":"),
                      Text(":"),
                      Text(":"),
                      Text(":"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ken Adams"),
                      Text("18"),
                      Text("8129720659"),
                      Text(" "),
                      Text(" "),
                    ],
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: vehicles.length,
                  itemBuilder: (context, i) {
                    return new ExpansionTile(
                      //Use builder
                      title: new Text(
                        "Record 1",
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('SpO2: ' + vehicles[i].spO2),
                                  Text('Pulse: ' + vehicles[i].pulse),
                                  Text('Temp: ' + vehicles[i].temp),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Pressure: ' + vehicles[i].pressure),
                                  Text('Respiratory rate: ' +
                                      vehicles[i].respirRate),
                                  Text('Time: ' + vehicles[i].time),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
