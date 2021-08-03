import 'package:flutter/material.dart';
import '../widgets/doctor_card.dart';
import '../models/doctor_model.dart';

class SubscribedDoctors extends StatefulWidget {
  @override
  _SubscribedDoctorsState createState() => _SubscribedDoctorsState();
}

class _SubscribedDoctorsState extends State<SubscribedDoctors> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Subscribed',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: doctorList.length,
              itemBuilder: (ctx, i) {
                return DoctorCard(
                  name: doctorList[i].name,
                  surName: doctorList[i].surName,
                  yearsOfExperience: doctorList[i].yearsOfExperience,
                  ratingScore: doctorList[i].ratingScore,
                  profession: doctorList[i].profession,
                  profilePicUrl: doctorList[i].profilePictureUrl,
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
