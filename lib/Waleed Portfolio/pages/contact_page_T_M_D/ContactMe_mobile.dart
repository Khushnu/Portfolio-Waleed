import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/functions/Custom_backdrop_filter.dart';
import 'package:flutter_application_2/functions/GoogleMap_Integration.dart';
import 'package:flutter_application_2/functions/copy_text.dart';
import 'package:flutter_application_2/functions/launch_url.dart';
import 'package:flutter_application_2/functions/mailing_fun.dart';
import 'package:flutter_application_2/styles/styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMeMobile extends StatefulWidget {
  const ContactMeMobile({super.key});

  @override
  State<ContactMeMobile> createState() => _ContactMeMobileState();
}

class _ContactMeMobileState extends State<ContactMeMobile> {
  bool isTick = true;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              urlLaunch("https://maps.app.goo.gl/wXXKmaZZ4ZAK2Zwk8");
            },
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ContactMe_containerStyle_mobile.color,
                    borderRadius: ContactMe_containerStyle_mobile.borderRadius,
                    // image: DecorationImage(
                    //   image: AssetImage('assets/locD.png'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  // padding: ContactMe_containerStyle_mobile.padding,
                  margin: ContactMe_containerStyle_mobile.margin,
                  width:
                      deviceWidth * ContactMe_containerStyle_mobile.loc_width,
                  height: 250,
                  child: ClipRRect(
                      borderRadius:
                          ContactMe_containerStyle_tablet.borderRadius,
                      child: const MouseRegion(
                          cursor: SystemMouseCursors.grab,
                          child: RandomLocationMap())),
                  // height: deviceHeight * ContactMe_containerStyle_mobile.loc_height,
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(130, 167, 167, 167),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
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
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  //email
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: CustomBox(
                      isHover: true,
                      hoverColor: ResumeColor,
                      borderRadius:
                          ContactMe_containerStyle_mobile.borderRadius,
                      margin: ContactMe_containerStyle_mobile.margin,
                      child: Container(
                          decoration: BoxDecoration(
                            color: ContactMe_containerStyle_mobile.color,
                            borderRadius:
                                ContactMe_containerStyle_mobile.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_mobile.padding,
                          width: deviceWidth *
                              ContactMe_containerStyle_mobile
                                  .width_mail_Linkedin,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/svg/email.svg",
                                clipBehavior: Clip.antiAlias,
                                color: textStyles.B.color,
                                height: ContactMe_containerStyle_tablet
                                    .svgcontHeight,
                              ), // SizedBox(
                              //   width: deviceWidth * 0.005,
                              // ),
                              GestureDetector(
                                onHorizontalDragUpdate: (details) {
                                  copyTextToClipboard(
                                      context, 'waleedah247@gmail.com');
                                },
                                onTap: () {
                                  openEmail();
                                },
                                child: SizedBox(
                                  width: deviceWidth * 0.36,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      " waleedah247@gmail.com",
                                      style: GoogleFonts.chakraPetch(
                                          textStyle: textStyles.P2B),
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isTick = !isTick;
                                  });
                                  //
                                  copyTextToClipboard(
                                      context, 'waleedah247@gmail.com');
                                  //
                                  Timer(
                                      const Duration(
                                          seconds: 2, milliseconds: 500), () {
                                    setState(() {
                                      isTick = !isTick;
                                    });
                                  });
                                },
                                child: AnimatedCrossFade(
                                  firstChild: Icon(
                                      color: textStyles.B.color, Icons.copy),
                                  secondChild: Icon(
                                      color: textStyles.B.color, Icons.check),
                                  crossFadeState: isTick
                                      ? CrossFadeState.showFirst
                                      : CrossFadeState.showSecond,
                                  duration: const Duration(milliseconds: 150),
                                ),
                              )
                            ],
                          )),
                    ),
                  ),

                  //linkedin
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        urlLaunch("www.linkedin.com/in/waleedahmad32");
                      },
                      child: CustomBox(
                        isHover: true,
                        hoverColor: ResumeColor,
                        borderRadius:
                            ContactMe_containerStyle_mobile.borderRadius,
                        margin: ContactMe_containerStyle_mobile.margin,
                        child: Container(
                          decoration: BoxDecoration(
                            color: ContactMe_containerStyle_mobile.color,
                            borderRadius:
                                ContactMe_containerStyle_mobile.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_mobile.padding,
                          width: deviceWidth *
                              ContactMe_containerStyle_mobile
                                  .width_mail_Linkedin,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/linkedin.svg",
                                // ignore: deprecated_member_use
                                // color: textStyles.B.color,
                                height: ContactMe_containerStyle_tablet
                                    .svgcontHeight,
                              ),
                              SizedBox(
                                width: deviceWidth * 0.005,
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  ' LinkedIn',
                                  minFontSize: 10,
                                  maxFontSize: 15,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.chakraPetch(
                                      textStyle: textStyles.P2B),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //insta
                      SizedBox(
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              urlLaunch("https://www.instagram.com/waleeduxafzai/");
                            },
                            child: CustomBox(
                              isHover: true,
                              hoverColor: ResumeColor,
                              borderRadius:
                                  ContactMe_containerStyle_mobile.borderRadius,
                              margin: ContactMe_containerStyle_mobile.margin,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ContactMe_containerStyle_mobile.color,
                                  borderRadius: ContactMe_containerStyle_mobile
                                      .borderRadius,
                                ),
                                padding:
                                    ContactMe_containerStyle_mobile.padding,
                                width: deviceWidth *
                                    ContactMe_containerStyle_mobile
                                        .bottom_icon_width,
                                child: SvgPicture.asset(
                                  "assets/svg/instagram.svg",
                                  // color: textStyles.B.color,
                                  height: ContactMe_containerStyle_tablet
                                      .svgcontHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      //twitter
                      SizedBox(
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              urlLaunch("https://leetcode.com/u/waleedah247/");
                            },
                            child: CustomBox(
                              isHover: true,
                              hoverColor: ResumeColor,
                              margin: ContactMe_containerStyle_mobile.margin,
                              borderRadius:
                                  ContactMe_containerStyle_mobile.borderRadius,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ContactMe_containerStyle_mobile.color,
                                  borderRadius: ContactMe_containerStyle_mobile
                                      .borderRadius,
                                ),
                                padding:
                                    ContactMe_containerStyle_mobile.padding,
                                width: deviceWidth *
                                    ContactMe_containerStyle_mobile
                                        .bottom_icon_width,
                                child: SvgPicture.asset(
                                  "assets/svg/x.svg",
                                  height: ContactMe_containerStyle_tablet
                                      .svgcontHeight,

                                  // ignore: deprecated_member_use
                                  // color: textStyles.B.color,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  //github
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        urlLaunch("https://github.com/Khushnu");
                      },
                      child: CustomBox(
                        isHover: true,
                        hoverColor: ResumeColor,
                        margin: ContactMe_containerStyle_mobile.margin,
                        borderRadius:
                            ContactMe_containerStyle_mobile.borderRadius,
                        child: Container(
                          decoration: BoxDecoration(
                            // color: ContactMe_containerStyle_mobile.color,
                            color: containerStyle.colorR,

                            borderRadius:
                                ContactMe_containerStyle_mobile.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_mobile.padding,
                          width: deviceWidth *
                              ContactMe_containerStyle_mobile.githubsizeW,
                          height: 122,
                          // height: deviceHeight * ContactMe_containerStyle_mobile.githubsizeH,
                          child: SvgPicture.asset(
                            "assets/svg/github.svg",
                            // ignore: deprecated_member_use
                            // color: textStyles.B.color,
                            // width: deviceWidth * 0.06,
                            // height: deviceHeight * 0.06,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //hackerrank
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        urlLaunch(
                            "https://discord.gg/e9KxZZTP");
                      },
                      child: CustomBox(
                        isHover: true,
                        hoverColor: ResumeColor,
                        margin: ContactMe_containerStyle_mobile.margin,
                        borderRadius:
                            ContactMe_containerStyle_mobile.borderRadius,
                        child: Container(
                          decoration: BoxDecoration(
                            color: ContactMe_containerStyle_mobile.color,
                            borderRadius:
                                ContactMe_containerStyle_mobile.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_mobile.padding,
                          width: deviceWidth *
                              ContactMe_containerStyle_mobile.githubsizeW,
                          child: SvgPicture.asset(
                            height:
                                ContactMe_containerStyle_tablet.svgcontHeight,

                            "assets/svg/discord.svg",
                           
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
