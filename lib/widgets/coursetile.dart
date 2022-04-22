import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../views/course.dart';

class CourseTile extends StatelessWidget {
  final String imageURL, title, courseURL, successRate;

  CourseTile(
      { required this.imageURL,
  required this.title,
  required this.courseURL,
   required this.successRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: new Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        elevation: 8.0,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseView(
                  courseUrl: courseURL,
                ),
              ),
            );
          },
          // launch(snapshot.data[index].link),
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Container(
              child: CachedNetworkImage(
                imageUrl: imageURL,
                fit: BoxFit.fill,
              ),
              height: 205,
              width: MediaQuery.of(context).size.width,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    title.replaceAll("[Free]", ""),
                    style:
                        GoogleFonts.notoSans(fontSize: 16, color: Colors.white),
                  ),
                  padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/icon.svg"),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Free",
                            style: GoogleFonts.notoSans(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[

                          GestureDetector(
                            onTap: () => launch(courseURL),
                            child: Icon(Icons.open_in_browser,
                                color: Colors.white, size: 24),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              Share.share(
                                  '$courseURL',
                              );
                            },
                            child:
                                Icon(Icons.share, color: Colors.white, size: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
