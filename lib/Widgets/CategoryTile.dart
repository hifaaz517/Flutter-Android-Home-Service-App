import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_project/Provider/Firebase/AppFirebase.dart';
import 'package:new_project/Screen/ServiceScreen.dart';
import 'package:provider/provider.dart';

class CategoryTile extends StatelessWidget {
  final String categoryName;
  final SvgPicture categoryIcon;
  final int serviceID;

  const CategoryTile({
    Key key,
    this.categoryName,
    this.categoryIcon,
    this.serviceID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Provider.of<Appfirebase>(context, listen: false).addData123();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return ServiceScreen(
                categoryName: categoryName,
                categoryId: serviceID,
                svgPicture: categoryIcon,
              );
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(2),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(0),
                height: 140,
                child: categoryIcon,
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 30,
                child: FittedBox(
                  child: Text(categoryName),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
