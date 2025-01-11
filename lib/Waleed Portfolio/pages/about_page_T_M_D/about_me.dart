import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_2/Data/profilePic_book.dart';
import 'package:flutter_application_2/Data/skill.dart';
import 'package:flutter_application_2/functions/Custom_backdrop_filter.dart';
import 'package:flutter_application_2/functions/GoogleMap_Integration.dart';
import 'package:flutter_application_2/styles/styles.dart';
// import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {




  @override
  Widget build(BuildContext context) {
    double isdeviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth =
        isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    // return  NotResp();
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: containerStyle.padding,
                  margin: containerStyle.margin,
                  width: deviceWidth * containerStyle.widthAboutme,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BEYOND PORTFOLIO",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.HeadingB, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Let me tell you more about me",
                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: CustomBox(
                  borderRadius: containerStyle.borderRadius,
                  margin: containerStyle.margin,
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerStyle.color,
                      gradient: RadialGradient(
                        colors: [
                          const Color.fromARGB(255, 79, 79, 79),
                          containerStyle.color
                        ],
                        center: Alignment.bottomCenter,
                      ),
                      borderRadius: containerStyle.borderRadius,
                    ),
                    padding: containerStyle.paddingNew,
                    width: deviceWidth * containerStyle.widthAboutme,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                    color: textStyles.B.color,
                                    Icons.flare_rounded),
                                Text(
                                  " Current Play",
                                  style: GoogleFonts.chakraPetch(
                                      textStyle: textStyles.HeadingB),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Call of Duty Warzone!",
                              style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.HeadingB),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "It's Warzone. Victory is yours to claim!",
                              style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.P1),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withValues(alpha:  0.15), // Shadow color
                                spreadRadius: 1, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 3), // Offset in the x and y direction
                              ),
                            ],
                          ),
                          child: Image.asset(
                            bookPic,
                            height: 250,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.bottomCenter,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CustomBox(
                borderRadius: containerStyle.borderRadius,
                margin: containerStyle.margin,
                child: Container(
                  decoration: BoxDecoration(
                    color: containerStyle.color,
                    borderRadius: containerStyle.borderRadius,
                  ),
                  padding: containerStyle.paddingNew,
                  width: deviceWidth * containerStyle.widthAboutme,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     
                      Expanded(
                        child: ScrollConfiguration(
                          behavior: const ScrollBehavior()
                              .copyWith(scrollbars: false),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(height: 40),

                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                        fontSize: 16,
                                        height: 1.5,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text:
                                              'I’m a software developer who thrives on building efficient',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                      TextSpan(
                                          text: 'and impactful solutions',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey)),
                                      TextSpan(
                                          text: 'Specializing in Flutter,',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                      TextSpan(
                                          text: 'I create sleek, cross-platform mobile apps that ',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey)),
                                      TextSpan(
                                          text: 'deliver great user experiences.',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                      TextSpan(
                                          text: 'On the backend, I work with',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              // fontWeight: FontWeight.bold,
                                             )),
                                      TextSpan(
                                          text: ' Rust, Node.js,',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey)),
                                      TextSpan(
                                          text: 'and C# to develop robust APIs',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey)),
                                      TextSpan(
                                          text:
                                              ' and seamless integrations. ',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                
                                      TextSpan(
                                          text: 'I also enjoy working on Arduino',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey)),
                                      TextSpan(
                                          text:
                                              '.” Those words stuck with me and set me on this path.',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),

                             
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                        fontSize: 16,
                                        height: 1.5,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text:
                                              'blending software with hardware to bring innovative ideas to life. ',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                      TextSpan(
                                          text: 'I believe in writing clean',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey)),
                                      TextSpan(
                                          text:
                                              ' purposeful code and staying curious ',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                      TextSpan(
                                          text: 'because in tech, there’s always',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey)),
                                      TextSpan(
                                          text:
                                              ' once more! It felt amazing to see my work recognized, and with each project, I found myself more drawn to the world of ',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                      TextSpan(
                                          text: 'something new to learn (or debug).',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey)),
                                      TextSpan(
                                          text: '.',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                              fontSize: kDefaultFontSize)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                    height: 20), // Spacing between sections

                                // Story Section 3
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                        fontSize: 16,
                                        height: 1.5,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                          text:
                                              'Let’s build something awesome together! ',
                                          style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,color:Colors.green,
                                              fontSize: kDefaultFontSize)),
                                     
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                    height: 20), // Spacing between sections

                                // Story Section 4
                              
                                const SizedBox(height: 25),
                              ],
                            ),
                          ),
                        ),
                      ),
                     CarouselSlider(items: quotesList.map((e)=> Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: BackdropFilter(filter: ImageFilter.blur(sigmaX: 19, sigmaY: 19), 
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.grey.withValues(alpha: 0.1)
                            ),
                            width: double.infinity,
                            child: Column(
                              spacing: 10,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AutoSizeText(" ${e['Quotes']}", 
                                textAlign: TextAlign.center,
                                maxFontSize: 16,
                                minFontSize: 12,
                                ),
                                
                                AutoSizeText('"${e['Name']}"', 
                                textAlign: TextAlign.center,
                                maxFontSize: 14,
                                minFontSize: 12 ,
                                style: const TextStyle(fontStyle: FontStyle.italic),
                                ),
                              ],
                            ),
                          ),
                          ),
                        ),
                      )).toList(), 
                      options: CarouselOptions(
                        autoPlay: true,
                        autoPlayCurve: Curves.linear,
                        aspectRatio: 20/9
                      )), 
                     const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(
                    borderRadius: containerStyle.borderRadiusRadup,
                    margin: containerStyle.margin,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(31, 0, 0, 0),
                        borderRadius: containerStyle.borderRadiusRadup,
                      ),
                      padding: containerStyle.paddingNew,
                      // margin: containerStyle.margin,
                      width: deviceWidth * containerStyle.widthAboutme,
                      height: 60,
                      child: Text(
                        "More About Me",
                        style: GoogleFonts.chakraPetch(
                            textStyle: textStyles.HeadingB),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 68, 68),
                          // Color(0xff95008a),
                          Color.fromARGB(255, 113, 78, 255)
                        ],
                      
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: containerStyle.borderRadiusBottom,
                    ),
                    margin: containerStyle.margin,
                    width: deviceWidth * containerStyle.widthAboutme,
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    margin: containerStyle.margin,
                    width: deviceWidth * containerStyle.widthAboutme,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: containerStyle.borderRadius,
                      child: const RandomLocationMap(),
                    ),
                  ),
                  Padding(
                    padding: containerStyle.margin,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(130, 167, 167, 167),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      margin: containerStyle.margin,
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 5, bottom: 5),
                      child: Row(
                        children: [
                          const Icon(color: Colors.white, Icons.place_rounded),
                          Text(
                            ' Islamabad, Pakistan',
                            style: GoogleFonts.chakraPetch(
                                textStyle: textStyles.edu_P_N,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 5,
                child: CustomBox(
                  margin: containerStyle.margin,
                  borderRadius: containerStyle.borderRadius,
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerStyle.color,
                      borderRadius: containerStyle.borderRadius,
                    ),
                    // padding: containerStyle.padding,
                    width: deviceWidth * containerStyle.widthAboutme,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: containerStyle.paddingNewHeading,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                      color: textStyles.B.color,
                                      Icons.flare_rounded),
                                  Text(
                                    " My Persona",
                                    style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.HeadingB),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Know me as a person",
                                style: GoogleFonts.chakraPetch(
                                    textStyle: textStyles.P1),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: Stack(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Positioned(
                                bottom: 100,
                                left: 200, // Adjusted left position
                                child: rotating_container(
                                  width: 169, // Adjusted width
                                  color: Color(0xFF4A90E2), // Tomato
                                  rotationZ: -4,
                                  text: "Curious Mind",
                                  emoji:
                                      "assets/emoji/Magnifier.png", // Magnifying Glass
                                ),
                              ),
                              Positioned(
                                bottom: 60,
                                left: 5, // Adjusted left position
                                child: rotating_container(
                                  width: 135, // Adjusted width
                                  color: Color(0xFFD4AC4B), // Sky Blue
                                  rotationZ: -15,
                                  text: "Bookworm",
                                  emoji: "assets/emoji/Book.png", // Books
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 60, // Adjusted left position
                                child: rotating_container(
                                  width: 135, // Adjusted width
                                  color: Color(0xFF27AE60), // Dark Orange
                                  rotationZ: 2,
                                  text: "Traveler",
                                  emoji:
                                      "assets/emoji/Airplane.png", // Airplane
                                ),
                              ),
                              Positioned(
                                bottom: 160,
                                left: 180, // Adjusted left position
                                child: rotating_container(
                                  width: 130, // Adjusted width
                                  color: Color(0xFFC0392B), // Lawn Green
                                  rotationZ: 12,
                                  text: "Gym Rat",
                                  emoji: "assets/emoji/Gym.png", // Weightlifter
                                ),
                              ),
                               Positioned(
                                bottom: 213,
                                left: 250, // Adjusted left position
                                child: rotating_container(
                                  width: 130, // Adjusted width
                                  color: Color(0xFFFFCCEA), // Medium Purple
                                  rotationZ: -19,
                                  text: "Hiker",
                                  emoji: "assets/emoji/hiking.png", // Circle
                                ),
                              ),
                              Positioned(
                                bottom: 182,
                                left: 70, // Adjusted left position
                                child: rotating_container(
                                  width: 130, // Adjusted width
                                  color: Color(0xFF76d5fe), // Lawn Green
                                  rotationZ: -28,
                                  text: "Gamer",
                                  emoji: "assets/emoji/videogame.png", // Weightlifter
                                ),
                              ),
                              Positioned(
                                bottom: 120,
                                left: 10, // Adjusted left position
                                child: rotating_container(
                                  width: 190, // Adjusted width
                                  color: Color(0xFFF39C12), // Medium Purple
                                  rotationZ: -4,
                                  text: "Problem Solver",
                                  emoji: "assets/emoji/Brain.png", // Circle
                                ),
                              ),
                              Positioned(
                                bottom: 35,
                                left: 150, // Adjusted left position
                                child: rotating_container(
                                  width: 215, // Adjusted width
                                  color: Color(0xFF8E44AD), // Medium Purple
                                  rotationZ: 18,
                                  text: "Friendly Ambivert",
                                  emoji: "assets/emoji/Moon.png", // Circle
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
