import 'package:coho/Models/Patient.dart';
import 'package:coho/Models/Selected.dart';
import 'package:coho/Screens/Nurse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewRecord extends StatefulWidget {
  @override
  _ViewRecordState createState() => _ViewRecordState();
}

class _ViewRecordState extends State<ViewRecord> {
  // Delete this

  // List<Track> vehicles = [
  //   new Track(
  //     pressure: "s",
  //     pulse: "s",
  //     respirRate: "927393",
  //     spO2: "w",
  //     temp: "sd",
  //     time: "sd",
  //   ),
  //   new Track(
  //     pressure: "sert",
  //     pulse: "sdt",
  //     respirRate: "sd",
  //     spO2: "sgjf",
  //     temp: "sfg",
  //     time: "sghj",
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    dynamic TxtTheme = Theme.of(context).textTheme.bodyText1;
    Selected selected = Provider.of<Selected>(context);
    print("\n\n\n\n\n\n\n on page ${selected.patient.track[0].pressure}");
    // Patient electedPatient = selected.getSelected;
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
                          Text(selected.patient.name, style: TxtTheme),
                          Text(selected.patient.age, style: TxtTheme),
                          Text(selected.patient.opNo, style: TxtTheme),
                          Text(selected.patient.phone??"Nil", style: TxtTheme),
                          Text(selected.patient.bedNo, style: TxtTheme),
                          Text(selected.patient.critical,
                              style: TxtTheme), // if possible else delete
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // selected.patient.track
                // selected.patient.track[0].pressure == null
                //     ? Text("empty")
                //     :

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemCount: selected.patient.track.length,
                      itemBuilder: (context, i) {
                        if (selected.patient.track[i].time == "null") {
                          print("\n\n\n\n\nti,e null");
                          return Container();
                        }
                        // if()
                        var values = [];
                        values.add(selected.patient.track[i].pulse == null
                            ? "N/A"
                            : selected.patient.track[i].pulse);
                        values.add(selected.patient.track[i].temp == null
                            ? "N/A"
                            : selected.patient.track[i].temp);
                        values.add(selected.patient.track[i].spO2 == null
                            ? "N/A"
                            : selected.patient.track[i].spO2);
                        values.add(selected.patient.track[i].time == null
                            ? "N/A"
                            : selected.patient.track[i].time);
                        values.add(selected.patient.track[i].respirRate == null
                            ? "N/A"
                            : selected.patient.track[i].respirRate);
                        values.add(selected.patient.track[i].pressure == null
                            ? "N/A"
                            : selected.patient.track[i].pressure);
                        print(values);
                        return new ExpansionTile(
                          leading: IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {
                              // selected.changeSelect()
                              print(
                                  "\n\nbefor nav ${selected.patient.track[i].spO2} ");
                              // selected.changeSelect(pa)
                              //TODO: Goto edit (Permission to edit for doc only)
                              print("Edit button clicked!");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Nurse(
                                        edit: "Yes",
                                        index: i,
                                        pat: selected.patient)),
                              );
                            },
                          ),
                          backgroundColor: Colors.white,
                          subtitle: Text(
                            "4 hours ago",
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                          //Use builder
                          title: new Text(
                            "Record " + (i + 1).toString(),
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
                                padding:
                                    const EdgeInsets.fromLTRB(0, 20, 0, 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'SpO2: ' + values[2],
                                          style: TxtTheme,
                                        ),
                                        Text(
                                          'Pulse: ' + values[0],
                                          style: TxtTheme,
                                        ),
                                        Text(
                                          'Temp: ' + values[1],
                                          style: TxtTheme,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Pressure: ' + values[5],
                                          style: TxtTheme,
                                        ),
                                        Text(
                                          'Resp. rate: ' + values[4],
                                          style: TxtTheme,
                                          softWrap: true,
                                        ),
                                        Text(
                                          'Time: ' + values[3],
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
