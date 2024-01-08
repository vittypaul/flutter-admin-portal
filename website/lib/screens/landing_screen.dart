import 'package:flutter/material.dart';

// ignore: camel_case_types
class Lpage extends StatelessWidget {
  const Lpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            decoration: const BoxDecoration(color: Colors.redAccent
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                //   colors: [Colors.deepOrange, Colors.white],
                // ),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.36,
                    top: constraints.maxHeight * 0.05,
                  ),
                  child: Text(
                    "Select Category",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: constraints.maxWidth * 0.04,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 35),
                buildCategoryRow(
                  constraints,
                  image1: "assets/fest.jpg",
                  label1: "Fest",
                  image2: "assets/cric.jpg",
                  label2: "Sports",
                  image3: "assets/techfst.jpg",
                  label3: "Tech-Fest",
                ),
                const SizedBox(height: 40),
                buildCategoryRow(
                  constraints,
                  image1: "assets/culfst.jpg",
                  label1: "Cultural-Fest",
                  image2: "assets/semi.jpg",
                  label2: "Seminar",
                  image3: "assets/hack.jpg",
                  label3: "Hackathons",
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget buildCategoryRow(
    BoxConstraints constraints, {
    required String image1,
    required String label1,
    required String image2,
    required String label2,
    required String image3,
    required String label3,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildCategoryItem(constraints, image1, label1),
        buildCategoryItem(constraints, image2, label2),
        buildCategoryItem(constraints, image3, label3),
      ],
    );
  }

  Widget buildCategoryItem(
    BoxConstraints constraints,
    String image,
    String label,
  ) {
    return Container(
      width: constraints.maxWidth * 0.265,
      height: constraints.maxHeight * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: constraints.maxWidth * 0.04,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
