import 'package:coho/Models/Patient.dart';
import 'package:flutter/material.dart';

class ViewRecord extends StatefulWidget {
  @override
  _ViewRecordState createState() => _ViewRecordState();
}

class _ViewRecordState extends State<ViewRecord> {
  
  // Delete this
  
  List<Track> vehicles = [
    new Track(
      pressure: "s",
      pulse: "s",
      respirRate: "927393",
      spO2: "w",
      temp: "sd",
      time: "sd",
    ),
    new Track(
      pressure: "sert",
      pulse: "sdt",
      respirRate: "sd",
      spO2: "sgjf",
      temp: "sfg",
      time: "sghj",
    ),
  ];





  @override
  Widget build(BuildContext context) {
    dynamic TxtTheme = Theme.of(context).textTheme.bodyText1;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Records'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name", style: TxtTheme),
                          Text("Age", style: TxtTheme),
                          Text("OP Number", style: TxtTheme),
                          Text("Phone", style: TxtTheme),
                          Text("Bed Number", style: TxtTheme),
                          Text("Current Status",
                              style: TxtTheme), // if possible else delete
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(":", style: TxtTheme),
                          Text(":", style: TxtTheme),
                          Text(":", style: TxtTheme),
                          Text(":", style: TxtTheme),
                          Text(":", style: TxtTheme),
                          Text(":", style: TxtTheme),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ken Adams", style: TxtTheme),
                          Text("18", style: TxtTheme),
                          Text("#324434", style: TxtTheme),
                          Text("8129720659", style: TxtTheme),
                          Text("134", style: TxtTheme),
                          Text("Normal",
                              style: TxtTheme), // if possible else delete
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(     
                      itemCount: vehicles.length,
                      itemBuilder: (context, i) {
                        return new ExpansionTile(
                          leading: IconButton(                            
                            icon: Icon(Icons.edit),
                            onPressed: (){
                              //TODO: Goto edit (Permission to edit for doc only)
                              print("Edit button clicked!");
                            },
                          ),
                          backgroundColor: Colors.white,
                          subtitle: Text(
                            "4 hours ago",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          //Use builder
                          title: new Text(
                            "Record 1",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(color: Colors.blue),
                          ),
                          children: <Widget>[
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SpO2: ' + vehicles[i].spO2,
                                          style: TxtTheme,
                                        ),
                                        Text(
                                          'Pulse: ' + vehicles[i].pulse,
                                          style: TxtTheme,
                                        ),
                                        Text(
                                          'Temp: ' + vehicles[i].temp,
                                          style: TxtTheme,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Pressure: ' + vehicles[i].pressure,
                                          style: TxtTheme,
                                        ),
                                        Text(
                                          'Respiratory rate: ' +
                                              vehicles[i].respirRate,
                                          style: TxtTheme,
                                        ),
                                        Text(
                                          'Time: ' + vehicles[i].time,
                                          style: TxtTheme,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
