import 'package:flutter/material.dart';
import 'package:new_project/Provider/Model/RateCardProvider.dart';
import 'package:provider/provider.dart';

class RateCardScreen extends StatelessWidget {
  final int categoryId;

  const RateCardScreen({
    Key key,
    @required this.categoryId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _data = Provider.of<RateCardProvider>(context);
    // int num = _data.listtt[1]['1'].length;
    // print("object");
    // print(num);
    List xxx = _data.returnTable(categoryId);

    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 220, 1),
      body: Card(
        color: Color.fromRGBO(57, 62, 70, 1),
        margin: EdgeInsets.only(bottom: 5),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
          child: SingleChildScrollView(
            child: DataTable(
              dividerThickness: 2,
              columnSpacing: 20,
              columns: [
                DataColumn(
                  label: Container(
                    width: 100,
                    child: Text(
                      'Particulars',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    width: 100,
                    child: Text(
                      'Unit',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                DataColumn(
                  label: Container(
                    width: 100,
                    child: Text(
                      'Charges',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
              rows:
                  xxx // Loops through dataColumnText, each iteration assigning the value to element
                      .map(
                        ((element) => DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  Center(
                                    child: Text(
                                      element["Particulars"],
                                      style: TextStyle(color: Colors.white),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ), //Extracting from Map element the value
                                DataCell(
                                  Center(
                                    child: Text(
                                      element["Unit"],
                                      style: TextStyle(color: Colors.white),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Center(
                                    child: Text(
                                      element["Charges"],
                                      style: TextStyle(color: Colors.white),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      )
                      .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
