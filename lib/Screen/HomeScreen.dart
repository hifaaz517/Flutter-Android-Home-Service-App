import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/Provider/AuthProvider/AuthenticationService.dart';
import 'package:new_project/Provider/Model/CategoryProvider.dart';
import 'package:new_project/Screen/ServiceLog.dart';
import 'package:new_project/Widgets/CategoryTile.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _data = Provider.of<CategoryProvider>(context);
    print("homeScreem");
    // Navigator.of(context).pop();
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 220, 1),
      drawer: Drawer(
        elevation: 10,
        child: ListView(
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return ServiceLog();
                  }),
                );
              },
              title: Text("Ttem 1"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 173, 181, 1),
        automaticallyImplyLeading: true,
        actions: [
          FlatButton(
            onPressed: () {
              print("object hahahhahah");
              context.read<AuthenticationService>().signOut();
            },
            child: Text("Signout"),
          ),
        ],
        title: Text(
          "Service",
        ),
      ),
      body: GridView.count(
        children: _data.list
            .map(
              (e) => CategoryTile(
                categoryName: e.categoryName,
                serviceID: e.serviceID,
                categoryIcon: SvgPicture.asset(e.image),
              ),
            )
            .toList(),
        crossAxisCount: 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        childAspectRatio: 6.5 / 9.0,
      ),
    );
  }
}

// class LogInScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var _data = Provider.of<Provider1>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Service"),
//       ),
//       body: ListView.builder(
//         shrinkWrap: true,
//         scrollDirection: Axis.vertical,
//         itemBuilder: (BuildContext context, int index) => index == 0
//             ? SizedBox(
//                 height: 10,
//               )
//             : CategoryTile(
//                 categoryName: _data.list[index].categoryName,
//               ),
//         itemCount: _data.list.length,
//       ),
//     );
//   }
// }
