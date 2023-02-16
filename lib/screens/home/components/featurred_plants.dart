import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatefulWidget {
  //  FeaturedPlants({
  //   Key key,
  // }) : super(key: key);

  @override
  State<FeaturedPlants> createState() => _FeaturedPlantsState();
}

class _FeaturedPlantsState extends State<FeaturedPlants> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatefulWidget {
  const FeaturePlantCard({
    // required Key key,
    final String? image,
  final Function? press,
  }) : super(key: key,required this.image,required this.press);
  

  @override
  State<FeaturePlantCard> createState() => _FeaturePlantCardState();
  
  press() {}
}

class _FeaturePlantCardState extends State<FeaturePlantCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.press(),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(widget.image),
          ),
        ),
      ),
    );
  }
}
