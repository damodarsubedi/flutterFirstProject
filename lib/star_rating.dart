import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class StarRating extends StatefulWidget {

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SmoothStarRating(
          rating: rating,
          size: 25,
          starCount: 3,
          spacing: 2.0,
          onRatingChanged: (value) {
            setState(() {
              rating = value;
            });
          },
        )
    );
  }
}