import 'package:flutter_animate/flutter_animate.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Data/education.dart';
import 'package:flutter_application_2/Data/exp.dart';
import 'package:flutter_application_2/Data/profilePic_book.dart';
import 'package:flutter_application_2/Data/projects.dart';
import 'package:flutter_application_2/Data/skill.dart';
import 'package:flutter_application_2/functions/Custom_backdrop_filter.dart';
import 'package:flutter_application_2/functions/custom_tooltip.dart';
import 'package:flutter_application_2/functions/downloadResume.dart';
import 'package:flutter_application_2/functions/hover%20effect.dart';
import 'package:flutter_application_2/functions/navigate.dart';
import 'package:flutter_application_2/functions/notifySnackBar.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/ToResponsivePage/toResponsive_AboutMe.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/ToResponsivePage/toResponsive_Projects.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/ToResponsivePage/toResponsive_contactMe.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../styles/styles.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  // double pixelValue = 300;

  @override
  Widget build(BuildContext context) {
    double isdeviceWidth = MediaQuery.of(context).size.width;
    // double isdeviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    double deviceHeight = 729.5;
    // print(isdeviceHeight);

    String rurl = 'https://github.com/Khushnu/animation_tutorials/blob/main/mycv.pdf';

    return Center(
      child: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: SizedBox(
                    width: deviceWidth < 1365 ? deviceWidth * 0.86 : deviceWidth * 0.84,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            //
                            //Headline
                            //
                            SizedBox(
                              height: 248.3,
                              child: HoverEffect(
                                childA: CustomBox(
                                  borderRadius: containerStyle.borderRadius,
                                  margin: containerStyle.margin,
                                  child: Container(
                                    // constraints: const BoxConstraints(
                                    //   maxHeight: 248.3,
                                    //   // maxWidth: 300,
                                    // ),
                                    decoration: BoxDecoration(
                                      color: containerStyle.color,
                                      borderRadius: containerStyle.borderRadius,
                                    ),
                                    padding: containerStyle.padding,
                                    // height: 248.3,

                                    // margin: containerStyle.margin,
                                    width: deviceWidth * containerStyle.width,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              color: textStyles.B.color,
                                              Icons.lightbulb,
                                              size: deviceWidth * 0.014,
                                            ),
                                          ],
                                        ),
                                        FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Building the",
                                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                                                ),
                                                TextSpan(
                                                  text: " Future",
                                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.I),
                                                ),
                                                TextSpan(
                                                  text: ",\nOne Line of ",
                                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                                                ),
                                                TextSpan(
                                                  text: "Code",
                                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.I),
                                                ),
                                                TextSpan(
                                                  text: "\nat a Time",
                                                  style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                childB: CustomBox(
                                  borderRadius: containerStyle.borderRadius,
                                  margin: containerStyle.margin,
                                  child: Container(
                                      // constraints: const BoxConstraints(
                                      //   maxHeight: 248.3,
                                      //   // maxWidth: 300,
                                      // ),
                                      decoration: BoxDecoration(
                                        color: containerStyle.color,
                                        borderRadius: containerStyle.borderRadius,
                                      ),
                                      padding: containerStyle.padding,
                                      // height: 248.3,

                                      // margin: containerStyle.margin,
                                      width: deviceWidth * containerStyle.width,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Icon(
                                            color: textStyles.B.color,
                                            Icons.code,
                                            size: deviceWidth * 0.014,
                                          ),
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "\nFlutter",
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.I),
                                                  ),
                                                  TextSpan(
                                                    text: " Developer  \n",
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.B),
                                                  ),
                                                
                                                  TextSpan(
                                                    text: "Full Stack Mobile Developer",
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.B, fontSize: 25),
                                                  ),
                                                  TextSpan(
                                                    text: "\nIslamabad",
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.I, fontSize: kDefaultFontSize),
                                                  ),
                                                  TextSpan(
                                                    text: ", Pakistan",
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.B, fontSize: kDefaultFontSize),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ).animate().fadeIn().move(begin: const Offset(0, 50)).effect(curve: Easing.emphasizedDecelerate),

                            //
                            //About
                            //
                            SizedBox(
                              height: 327.0,
                              child: GestureDetector(
                                onTap: () {
                                  navigateTo(context, const ToResponsiveLayoutAboutMe());
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: CustomBox(
                                    isHover: true,
                                    hoverColor: ResumeColor,
                                    margin: containerStyle.margin,
                                    borderRadius: containerStyle.borderRadius,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: containerStyle.color,
                                        borderRadius: containerStyle.borderRadius,
                                      ),
                                      padding: containerStyle.padding,
                                      // margin: containerStyle.margin,
                                      width: deviceWidth * containerStyle.width,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                               
                                                child: AutoSizeText.rich(
                                                  maxFontSize: 23,
                                                  minFontSize: 5,
                                                  maxLines: 1,
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'About ',
                                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                      ),
                                                      TextSpan(
                                                        text: 'Me',
                                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                color: IconHClr,
                                                Icons.arrow_outward_rounded,
                                                size: deviceWidth * 0.014,
                                              )
                                            ],
                                          ),
                                          AutoSizeText(
                                            minFontSize: 10,
                                            maxFontSize: 14,
                                            maxLines: 12,
                                            style: GoogleFonts.chakraPetch(textStyle: textStyles.P1),
                                            "Flutter magician by day, code ninja by night with Flutter expertise, plus a background in Java, Android, Xamarin.Forms, Arduino, and backend with NestJS and PostgreSQL.I craft seamless experiences that look amazing and work flawlessly, from front to back. then Why settle for good when you can aim for “wow”? If you're after a developer here I'am.",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ).animate().fadeIn().move(begin: const Offset(0, 50)).effect(curve: Easing.emphasizedDecelerate),
                            //
                            //Resume
                            //
                            SizedBox(
                              height: 112.3,
                              child: GestureDetector(
                                onTap: () {
                                  downloadResume(rurl);
                                  notifySnackBar(context, "My Resume Will Be Downloaded Shortly");
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: CustomBox(
                                    // color: containerStyle.colorR,
                                    hoverColor: const Color.fromARGB(255, 255, 255, 255),
                                    isHover: true,
                                    borderRadius: containerStyle.borderRadius,
                                    margin: containerStyle.margin,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: containerStyle.colorR,
                                        borderRadius: containerStyle.borderRadius,
                                      ),
                                      padding: containerStyle.padding,
                                      // margin: containerStyle.margin,
                                      width: deviceWidth * containerStyle.width,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            color: textStyles.B.color,
                                            Icons.download_rounded,
                                            size: deviceWidth * 0.014,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: AutoSizeText.rich(
                                                  maxFontSize: 23,
                                                  minFontSize: 5,
                                                  maxLines: 1,
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: "My ",
                                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB, color: Colors.black),
                                                      ),
                                                      TextSpan(
                                                        text: "Resume",
                                                        style: GoogleFonts.chakraPetch(
                                                          textStyle: textStyles.HeadingI,
                                                          color: Colors.black,
                                                          // backgroundColor: const Color.fromARGB(255, 119, 119, 119)
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ).animate().fadeIn().move(begin: const Offset(0, 50)).effect(curve: Easing.emphasizedDecelerate),
                        Column(
                          children: [
                            //
                            //Name
                            //
                            RepaintBoundary(
                              child: SizedBox(
                                height: 96.3,
                                child: CustomBox(
                                  borderRadius: containerStyle.borderRadius,
                                  margin: containerStyle.margin,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: containerStyle.color,
                                      borderRadius: containerStyle.borderRadius,
                                    ),
                                    padding: containerStyle.padding,
                                    // margin: containerStyle.margin,
                                    width: deviceWidth * containerStyle.width,
                                    child: Center(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: RichText(
                                            text: TextSpan(children: [
                                          TextSpan(text: "Waleed ", style: GoogleFonts.chakraPetch(textStyle: textStyles.Name1)),
                                          TextSpan(text: " </Dev>", style: GoogleFonts.chakraPetch(textStyle: textStyles.Name2)),
                                        ])),
                                      ),
                                    ),
                                  ),
                                ),
                              ).animate().fadeIn().move(begin: const Offset(0, -50)),
                            ),
                            //Animation here (Experimental),
                            //
                            //Pfp
                            //
                            RepaintBoundary(
                              child: SizedBox(
                                height: 340.8,
                                child: CustomBox(
                                  borderRadius: containerStyle.borderRadius,
                                  margin: containerStyle.margin,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: containerStyle.color,
                                      borderRadius: containerStyle.borderRadius,
                                      // image: const DecorationImage(
                                      //   scale: 2.0,
                                      //   image: AssetImage(profilepic,),
                                      //   fit: BoxFit.fitHeight,
                                      // ),
                                    ),
                                    padding: containerStyle.padding,
                                    // margin: containerStyle.margin,
                                    width: deviceWidth * containerStyle.width,
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Icon(
                                                color: textStyles.B.color,
                                                Icons.verified_rounded,
                                                size: deviceWidth * 0.014,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Center(
                                          child: SizedBox(
                                            height: 200,
                                            width: 200,
                                            child: Image.asset(profilepic),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ).animate().fadeIn(delay: const Duration(milliseconds: 200)).move(begin: const Offset(-30,0)),
                            ),
                            //
                              //Contact Me
                            //
                            RepaintBoundary(
                              child: SizedBox(
                                height: 240.5,
                                child: GestureDetector(
                                  onTap: () {
                                    navigateTo(context, const ToResponsiveLayoutContactMe());
                                  },
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: CustomBox(
                                      isHover: true,
                                      hoverColor: ResumeColor,
                                      borderRadius: containerStyle.borderRadius,
                                      margin: containerStyle.margin,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: containerStyle.color,
                                          borderRadius: containerStyle.borderRadius,
                                        ),
                                        padding: containerStyle.padding,
                                        // margin: containerStyle.margin,
                                        width: deviceWidth * containerStyle.width,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    "Have some\nQuestions?",
                                                    maxLines: 3,
                                                    maxFontSize: 15,
                                                    minFontSize: 10,
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.P1),
                                                  ),
                                                ),
                                                Icon(
                                                  color: IconHClr,
                                                  Icons.arrow_outward_rounded,
                                                  size: deviceWidth * 0.014,
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText.rich(
                                                    maxFontSize: 23,
                                                    minFontSize: 5,
                                                    maxLines: 1,
                                                    TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Contact ',
                                                          style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                        ),
                                                        TextSpan(
                                                          text: 'Me',
                                                          style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ).animate().fadeIn().move(begin: const Offset(0, 50)).effect(curve: Easing.emphasizedDecelerate),
                            ),
                           
                          ],
                        ),
                        Column(
                          children: [
                            //
                             //Skills
                            //
                            SizedBox(
                              height: 359.0,
                              child: CustomBox(
                                borderRadius: containerStyle.borderRadius,
                                margin: containerStyle.margin,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: containerStyle.color,
                                    borderRadius: containerStyle.borderRadius,
                                  ),
                                  padding: containerStyle.padding,
                                  // margin: containerStyle.margin,
                                  width: deviceWidth * containerStyle.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText.rich(
                                              maxFontSize: 23,
                                              minFontSize: 5,
                                              maxLines: 1,
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Technical ',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                  ),
                                                  TextSpan(
                                                    text: 'Skills',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            color: textStyles.B.color,
                                            Icons.lens_blur_rounded,
                                            size: deviceWidth * 0.014,
                                          )
                                        ],
                                      ),

                                      ///padding box
                                      SizedBox(
                                        height: deviceHeight * 0.015,
                                      ),
                                      ////
                                      Expanded(
                                        flex: 3,
                                        child: ScrollConfiguration(
                                          behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                          child: GridView.builder(
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 4,
                                              // crossAxisSpacing: 3,
                                              // mainAxisSpacing: 3,
                                            ),
                                            itemCount: skills.length,
                                            itemBuilder: (context, index) {
                                              return Container(
                                                decoration: BoxDecoration(
                                                  // color: containerStyle.color,
                                                  borderRadius: containerStyle.borderRadius,
                                                ),
                                                child: Center(
                                                  child: Custom_tooltip(
                                                    message: skills[index].name,
                                                    child: SvgPicture.asset(
                                                      skills[index].svgPath,
                                                      width: deviceWidth * 0.06,
                                                      height: deviceHeight * 0.06,
                                                    ),
                                                  ),
                                                  // child: Custom_tooltip(
                                                  //   message: "a long text $index",
                                                  //   child: SvgPicture.asset(
                                                  //     skills[index],
                                                  //     // color: textStyles.B.color,
                                                  //     width: deviceWidth * 0.06,
                                                  //     height: deviceHeight * 0.06,
                                                  //   ),
                                                  // ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            
                            
                            //Project
                            //
                            SizedBox(
                              height: 378.6,
                              child: CustomBox(
                                isHover: true,
                                hoverColor: ResumeColor,
                                borderRadius: containerStyle.borderRadius,
                                margin: containerStyle.margin,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: containerStyle.color,
                                    borderRadius: containerStyle.borderRadius,
                                  ),
                                  padding: containerStyle.paddingNew,
                                  // margin: containerStyle.margin,
                                  width: deviceWidth * containerStyle.width,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          navigateTo(
                                              context,
                                              const ToResponsiveLayoutProject(
                                                initialIndex: 0,
                                              ));
                                        },
                                        child: MouseRegion(
                                          cursor: SystemMouseCursors.click,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: AutoSizeText.rich(
                                                  maxFontSize: 23,
                                                  minFontSize: 5,
                                                  maxLines: 1,
                                                  TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'My ',
                                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                      ),
                                                      TextSpan(
                                                        text: 'Projects',
                                                        style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                color: IconHClr,
                                                Icons.arrow_outward_rounded,
                                                size: deviceWidth * 0.014,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),

                                      ///padding box
                                      SizedBox(
                                        height: deviceHeight * 0.015,
                                      ),
                                      ////
                                      Expanded(
                                          child: ScrollConfiguration(
                                        behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                        child: ListView.builder(
                                            itemCount: projects.length,
                                            itemBuilder: (context, index) {
                                              return GestureDetector(
                                                onTap: () {
                                                  navigateTo(context, ToResponsiveLayoutProject(initialIndex: index));
                                                },
                                                child: MouseRegion(
                                                  cursor: SystemMouseCursors.click,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: ProjectcontainerStyle.color,
                                                      borderRadius: EducationcontainerStyle.borderRadius,
                                                    ),
                                                    padding: ProjectcontainerStyle.padding,
                                                    margin: ProjectcontainerStyle.margin,
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.only(right: 8.0),
                                                              child: Image.asset(
                                                                color: textStyles.B.color,
                                                                projects[index].icon,
                                                                scale: deviceWidth * 0.016,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: deviceWidth * 0.118,
                                                              child: AutoSizeText(minFontSize: 6, maxFontSize: 15, maxLines: 1, 
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.P2B), overflow: TextOverflow.ellipsis, projects[index].title),
                                                            ),
                                                          ],
                                                        ),
                                                        Flexible(
                                                          child: Icon(
                                                            color: textStyles.B.color,
                                                            Icons.arrow_forward_ios_rounded,
                                                            size: deviceWidth * 0.014,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //

                          
                          ],
                        ).animate().fadeIn( curve: Curves.decelerate),
                           
                        Column(
                          children: [
                            //
                             //Exp
                            //
                            SizedBox(
                              height: 384.4,
                              child: CustomBox(
                                borderRadius: containerStyle.borderRadius,
                                margin: containerStyle.margin,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: containerStyle.color,
                                    borderRadius: containerStyle.borderRadius,
                                  ),
                                  padding: containerStyle.paddingNew,
                                  // margin: containerStyle.margin,
                                  width: deviceWidth * containerStyle.width,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText.rich(
                                              maxFontSize: 23,
                                              minFontSize: 5,
                                              maxLines: 1,
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'My ',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                  ),
                                                  TextSpan(
                                                    text: 'Experience',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            color: textStyles.B.color,
                                            Icons.work_history_rounded,
                                            size: deviceWidth * 0.014,
                                          )
                                        ],
                                      ),

                                      ///padding box
                                      SizedBox(
                                        height: deviceHeight * 0.015,
                                      ),
                                      ////
                                      Expanded(
                                        child: ScrollConfiguration(
                                          behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                          child: ListView.builder(
                                            itemCount: experiences.length,
                                            itemBuilder: (context, index) {
                                              return TimelineTile(
                                                isFirst: experiences[index].start,
                                                isLast: experiences[index].end,
                                                afterLineStyle: LineStyle(
                                                  thickness: 2,
                                                  color: EducationcontainerStyle.color,
                                                ),
                                                beforeLineStyle: LineStyle(
                                                  thickness: 2,
                                                  color: EducationcontainerStyle.color,
                                                ),
                                                indicatorStyle: IndicatorStyle(
                                                  color: EducationcontainerStyle.color,
                                                  iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_right_rounded),
                                                ),
                                                alignment: TimelineAlign.start,
                                                endChild: Container(
                                                  padding: EducationcontainerStyle.padding,
                                                  margin: EducationcontainerStyle.margin,
                                                  decoration: BoxDecoration(
                                                    color: EducationcontainerStyle.color,
                                                    borderRadius: EducationcontainerStyle.borderRadius,
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          experiences[index].role,
                                                          style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_H_B),
                                                        ),
                                                      ),
                                                      FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              experiences[index].startTime,
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                            ),
                                                            Text(
                                                              ' - ',
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                            ),
                                                            Text(
                                                              experiences[index].endTime,
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                            ),
                                                            Text(
                                                              ' • ',
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                            ),
                                                            Text(
                                                              experiences[index].duration,
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          SizedBox(
                                                            // color: Colors.amber,
                                                            width: deviceWidth * 0.1,
                                                            child: Text(
                                                              experiences[index].companyName,
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            //
                            //Edu
                            //
                            SizedBox(
                              height: 343.2,
                              child: CustomBox(
                                borderRadius: containerStyle.borderRadius,
                                margin: containerStyle.margin,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: containerStyle.color,
                                    borderRadius: containerStyle.borderRadius,
                                  ),
                                  padding: containerStyle.paddingNew,
                                  // margin: containerStyle.margin,
                                  width: deviceWidth * containerStyle.width,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: AutoSizeText.rich(
                                              maxFontSize: 23,
                                              minFontSize: 5,
                                              maxLines: 1,
                                              TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'My ',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingB),
                                                  ),
                                                  TextSpan(
                                                    text: 'Education',
                                                    style: GoogleFonts.chakraPetch(textStyle: textStyles.HeadingI),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            color: textStyles.B.color,
                                            Icons.school_rounded,
                                            size: deviceWidth * 0.014,
                                          )
                                        ],
                                      ),

                                      ///padding box
                                      SizedBox(
                                        height: deviceHeight * 0.015,
                                      ),
                                      ////
                                      Expanded(
                                        child: ScrollConfiguration(
                                          behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                          child: ListView.builder(
                                            itemCount: educations.length,
                                            itemBuilder: (context, index) {
                                              return TimelineTile(
                                                isFirst: educations[index].start,
                                                isLast: educations[index].end,
                                                afterLineStyle: LineStyle(
                                                  thickness: 2,
                                                  color: EducationcontainerStyle.color,
                                                ),
                                                beforeLineStyle: LineStyle(
                                                  thickness: 2,
                                                  color: EducationcontainerStyle.color,
                                                ),
                                                indicatorStyle: IndicatorStyle(
                                                  color: EducationcontainerStyle.color,
                                                  iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_right_rounded),
                                                ),
                                                alignment: TimelineAlign.start,
                                                endChild: Container(
                                                  padding: EducationcontainerStyle.padding,
                                                  margin: EducationcontainerStyle.margin,
                                                  decoration: BoxDecoration(
                                                    color: EducationcontainerStyle.color,
                                                    borderRadius: EducationcontainerStyle.borderRadius,
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          educations[index].institutionName,
                                                          style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_H_B),
                                                        ),
                                                      ),
                                                      FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                              educations[index].startTime,
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                            ),
                                                            const Text(" - "),
                                                            Text(
                                                              educations[index].endTime,
                                                              style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_L),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      educations[index].department != ''
                                                          ? FittedBox(
                                                              fit: BoxFit.scaleDown,
                                                              child: Text(
                                                                educations[index].department,
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                                              ),
                                                            )
                                                          : const Offstage(),
                                                      educations[index].grade != ''
                                                          ? FittedBox(
                                                              fit: BoxFit.scaleDown,
                                                              child: Text(
                                                                educations[index].grade,
                                                                style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N),
                                                              ),
                                                            )
                                                          : const Offstage(),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
