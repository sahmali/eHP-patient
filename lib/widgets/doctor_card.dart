import 'package:flutter/material.dart';
import '../widgets/queue_card.dart';
import '../palette.dart';

class DoctorCard extends StatefulWidget {
  final String profilePicUrl;
  final String name;
  final String surName;
  final String profession;

  final int yearsOfExperience;
  double ratingScore;
  DoctorCard(
      {@required this.yearsOfExperience,
      @required this.ratingScore,
      @required this.profession,
      @required this.name,
      @required this.profilePicUrl,
      @required this.surName});
  @override
  _DoctorCardState createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.00,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: customGrey[100],
            width: 1,
          ),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(widget.profilePicUrl),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.profession,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: customGrey[700]),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '${widget.name} ${widget.surName}',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: customGrey[900]),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '${widget.yearsOfExperience} years of experience',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: customGrey[500]),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      QueueCard(
                        personsInQueue: 5,
                      ),
                    ],
                  ),
                ],
              ),
              RichText(
                  text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  Icons.star,
                  size: 16,
                  color: primaryColor,
                )),
                TextSpan(
                    text: widget.ratingScore.toString(),
                    style: TextStyle(color: customGrey[700]))
              ])),
            ],
          ),
        ));
  }
}
