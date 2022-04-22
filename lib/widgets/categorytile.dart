import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/category.dart';

class CategoryTile extends StatelessWidget {
  final String imageURL, categoryName;
  final Color color;

  CategoryTile({required this.imageURL, required this.categoryName, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Category(
                    category: categoryName.toLowerCase(),
                  )),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 157,
        width: 128,
        decoration: BoxDecoration(
          color: color,
            borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.only(right: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(imageURL),
            SizedBox(height: 14,),
            Text(categoryName,style: GoogleFonts.poppins(color: Colors.white,fontSize: 16),),
          ],
        ),
      ),
    );
  }
}
