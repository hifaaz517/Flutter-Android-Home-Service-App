import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/Screen/RateCardScreen.dart';
import 'package:new_project/Screen/ServiceFormScreen.dart';

class ServiceScreen extends StatelessWidget {
  final String categoryName;
  final int categoryId;
  final SvgPicture svgPicture;

  const ServiceScreen({
    Key key,
    @required this.categoryName,
    @required this.categoryId,
    @required this.svgPicture,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print("printing category ID");
    print(categoryId);

    var screenSize = MediaQuery.of(context);
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromRGBO(245, 245, 220, 1),
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment(0, -1),
                  child: Container(height: 200,
                    child: svgPicture,
                  ),
                ),
                Align(
                  alignment: Alignment(0, -.5),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                      maxHeight: 50,
                    ),
                    child: AppBar(
                      backgroundColor: Color.fromRGBO(245, 245, 220, 1),
                      elevation: 0,
                      automaticallyImplyLeading: false,
                      bottom: TabBar(
                        unselectedLabelColor: Colors.white,
                        // indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(0, 173, 181, 1),
                              Color.fromRGBO(0, 173, 181, 1)
                            ]),
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.redAccent),
                        tabs: [
                          Tab(
                            child: Text(
                              "Book Service",
                              style: TextStyle(
                                  color: Color.fromRGBO(57, 62, 70, 1)),
                            ),
                            // text: "Book Service",
                          ),
                          Tab(
                            child: Text(
                              "Rate Card",
                              style: TextStyle(
                                  color: Color.fromRGBO(57, 62, 70, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.90),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 220, 1),
                      // shape: BoxShape.circle,
                      // borderRadius: BorderRadius.circular(30),
                    ),
                    height: screenSize.size.height * 0.65,
                    width: screenSize.size.width * 0.95,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ServiceFormScreen(
                            categoryId: categoryId,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RateCardScreen(
                            categoryId: categoryId,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class SignInScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context);
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(backgroundColor: Colors.amber,
//         body: Stack(
//           children: [
//             Positioned(
//               top: 100,
//               left: 200,
//               child: Text("Repair"),
//             ),
//             Positioned(
//               height: 60,
//               left: 90,
//               right: 90,
//               // bottom: 10,
//               top: 200,
//               child: AppBar(
//                   bottom: PreferredSize(
//                 preferredSize: Size.fromHeight(0),
//                 child: Container(
//                   height: 20,
//                   child: TabBar(tabs: [
//                     Tab(
//                       text: "Existing",
//                     ),
//                     Tab(
//                       text: "New",
//                     ),
//                   ]),
//                 ),
//               )),
//             ),
//             Positioned(
//               top: 300,
//               left: 20,
//               right: 20,
//               bottom: 60,
//               child: TabBarView(
//                 children: [
//                   ServiceDetail(),
//                   SignInScreen(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
