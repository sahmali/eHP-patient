import 'package:flutter/foundation.dart';

class Doctor {
  final String name;
  final String surName;
  final String profession;
  final String profilePictureUrl;
  final int yearsOfExperience;
  double ratingScore;
  Doctor(
      {@required this.name,
      @required this.surName,
      @required this.profession,
      @required this.profilePictureUrl,
      @required this.ratingScore,
      @required this.yearsOfExperience});
}

List<Doctor> doctorList = [
  Doctor(
      name: 'Sabir',
      surName: 'Karimov',
      profession: 'Cardiolog',
      ratingScore: 4.5,
      yearsOfExperience: 3,
      profilePictureUrl:
          'https://i.pinimg.com/originals/14/cb/53/14cb53b8325764d8d387005ff8e4150c.jpg'),
  Doctor(
      name: 'David',
      surName: 'Colombo',
      profession: 'UZI',
      ratingScore: 4.2,
      yearsOfExperience: 1,
      profilePictureUrl:
          'https://media.istockphoto.com/photos/indian-doctor-picture-id179011088?s=170667a'),
  Doctor(
      name: 'Katy',
      surName: 'Zielinski',
      profession: 'Genekolog',
      ratingScore: 4.0,
      yearsOfExperience: 10,
      profilePictureUrl:
          'https://www.independent.ie/irish-news/education/671f1/40328133.ece/AUTOCROP/w620/A%20young%20caring%20doctor'),
  Doctor(
      name: 'Salam',
      surName: 'Salamovic',
      profession: 'Salamlayan',
      ratingScore: 5.0,
      yearsOfExperience: 100,
      profilePictureUrl:
          'https://us.123rf.com/450wm/rido/rido1704/rido170400095/76465313-portrait-of-smiling-doctor-with-stethoscope-around-his-neck-at-medical-clinic-happy-smiling-senior-d.jpg?ver=6'),
];
