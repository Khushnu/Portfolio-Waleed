// import 'package:flutter/material.dart';

// class Skill {
//   final IconData icon;

//   Skill({required this.icon});
// }

// List<String> skills = [
//   'assets/svg/flutter.svg',
//   'assets/svg/dart.svg',
//   'assets/svg/python.svg',
//   'assets/svg/cpp.svg',
//   'assets/svg/html.svg',
//   'assets/svg/css.svg',
//   'assets/svg/javascript.svg',
//   'assets/svg/mysql.svg',
//   'assets/svg/java.svg',
//   'assets/svg/blender.svg',
//   'assets/svg/figma.svg',
//   'assets/svg/framer.svg',
// ];

class Skill {
  final String svgPath;
  final String name;

  Skill({required this.svgPath, required this.name});
}

final List<Skill> skills = [
  Skill(svgPath: 'assets/svg/flutter.svg', name: 'Flutter'),
  Skill(svgPath: 'assets/svg/dart.svg', name: 'Dart'),
  Skill(svgPath: 'assets/svg/xd.svg', name: 'Adobe XD'),
  Skill(svgPath: 'assets/svg/cpp.svg', name: 'C++'),
  Skill(svgPath: 'assets/svg/csharp.svg', name: 'C#'),
  Skill(svgPath: 'assets/svg/api.svg', name: 'RestfulAPI'),
  Skill(svgPath: 'assets/svg/css.svg', name: 'CSS'),
  Skill(svgPath: 'assets/svg/javascript.svg', name: 'JavaScript'),
  Skill(svgPath: 'assets/svg/postgres.svg', name: 'PostgreSQL'),
  Skill(svgPath: 'assets/svg/java.svg', name: 'Java'),
  Skill(svgPath: 'assets/svg/typescript.svg', name: 'Typescript'),
  Skill(svgPath: 'assets/svg/figma.svg', name: 'Figma'),
  Skill(svgPath: 'assets/svg/nodejs.svg', name: 'Nodejs'),
  Skill(svgPath: 'assets/svg/arduino.svg', name: 'Arduino'),
  Skill(svgPath: 'assets/svg/photoshop.svg', name: 'Photoshop'),
];



final quotesList =[
  {
    "Name": "Cory House", 
    "Quotes": "Code is like humor. When you have to explain it, it’s bad."
  }, 
  {
    "Name": "Chris Pine", 
    "Quotes": "Programming isn’t about what you know; it’s about what you can figure out."
  }, 
  {
    "Name": "Steve Maguire", 
    "Quotes": "Fix the cause, not the symptom."
  }, 
  {
    "Name": "John Johnson", 
    "Quotes": "First, solve the problem. Then, write the code."
  }, 
  {
    "Name": "Austin Freeman", 
    "Quotes": "Simplicity is the soul of efficiency."
  }, 
  {
    "Name": "Casey Patton", 
    "Quotes": "Programming is thinking, not typing."
  }, 
  {
    "Name": "Thomas Fuchs", 
    "Quotes": "The best error message is the one that never shows up."
  }, 
];
