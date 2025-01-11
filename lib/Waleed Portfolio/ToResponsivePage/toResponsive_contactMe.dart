
import 'package:flutter/material.dart';
import 'package:flutter_application_2/functions/Mouse_Tracker.dart';
import 'package:flutter_application_2/functions/animated_blob.dart';
import 'package:flutter_application_2/functions/navigation_bar.dart';
import 'package:flutter_application_2/functions/responsive_layout.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/pages/contact_page_T_M_D/ContactMe_mobile.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/pages/contact_page_T_M_D/ContactMe_tablet.dart';

class ToResponsiveLayoutContactMe extends StatelessWidget {
  final int currentIndex;
  const ToResponsiveLayoutContactMe({super.key, this.currentIndex = 3});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: screenWidth >= 600
            ? AnimatedBlobBackground(
                numberOfBlobs: 4,
                gravitationalPull: 1.0,
                baseSpeed: 0.5,
                blobSizeMultiplier: 1,
                orbitRadius: 0.2,
                child: CursorTracker(
                  child: NavigationWrapper(
                    currentIndex: currentIndex,
                    child: const ResponsiveLayout(
                      mobileBody: ContactMeMobile(),
                      tabletBody: ContactMeTablet(),
                      desktopBody: ContactMeTablet(),
                    ),
                  ),
                ),
              )
            : AnimatedBlobBackground(
                numberOfBlobs: 4,
                gravitationalPull: 1.0,
                baseSpeed: 0.5,
                blobSizeMultiplier: 1,
                orbitRadius: 0.2,
                child: NavigationWrapper(
                  currentIndex: currentIndex,
                  child: const ResponsiveLayout(
                    mobileBody: ContactMeMobile(),
                    tabletBody: ContactMeTablet(),
                    desktopBody: ContactMeTablet(),
                  ),
                ),
              ));
  }
}
