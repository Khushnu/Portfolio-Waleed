
import 'package:flutter/material.dart';
import 'package:flutter_application_2/functions/Mouse_Tracker.dart';
import 'package:flutter_application_2/functions/animated_blob.dart';
import 'package:flutter_application_2/functions/navigation_bar.dart';
import 'package:flutter_application_2/functions/responsive_layout.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/pages/project_page_T_M_D/myProject_mobile.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/pages/project_page_T_M_D/myProject_tablet.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/pages/project_page_T_M_D/my_projects.dart';

class ToResponsiveLayoutProject extends StatelessWidget {
  final int currentIndex;
  final int initialIndex; // Accept the initial index

  const ToResponsiveLayoutProject(
      {super.key, required this.initialIndex, this.currentIndex = 1});

  @override
  Widget build(BuildContext context) {
    // Detect screen width
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
                  child: ResponsiveLayout(
                    desktopBody: myProject(initialIndex: initialIndex),
                    mobileBody: myProject_mobile(initialIndex: initialIndex),
                    tabletBody: myProject_tablet(initialIndex: initialIndex),
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
                child: ResponsiveLayout(
                  desktopBody: myProject(initialIndex: initialIndex),
                  mobileBody: myProject_mobile(initialIndex: initialIndex),
                  tabletBody: myProject_tablet(initialIndex: initialIndex),
                ),
              ),
            ),
    );
  }
}
