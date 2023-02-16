import 'package:flutter/material.dart';
// import 'package:plant_app/constants.dart';
import 'package:plantapp/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Bodyl extends StatelessWidget {
  const Bodyl({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape:
// RoundedRectangleBorder(
//                     borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(20),
//                     ),
//                   ),
                  ),
                  
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
