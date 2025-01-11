
import 'package:flutter/material.dart';
import 'package:flutter_application_2/functions/Mouse_Tracker.dart';
import 'package:flutter_application_2/functions/animated_blob.dart';
import 'package:flutter_application_2/functions/navigation_bar.dart';
import 'package:flutter_application_2/functions/responsive_layout.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/desktop.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/mobile.dart';
import 'package:flutter_application_2/Waleed%20Portfolio/tablet.dart';

class ToResponsiveLayout extends StatefulWidget {
  final int currentIndex;
  const ToResponsiveLayout({super.key, this.currentIndex = 0});

  @override
  State<ToResponsiveLayout> createState() => _ToResponsiveLayoutState();
}

class _ToResponsiveLayoutState extends State<ToResponsiveLayout> {
  //I have Comment out this code to temporarily disable the alert box
  //I will enable it once I have completed the redesigned website.
  // @override
  // void initState() {
  //   super.initState();
  //   future_delay_dialog(4);
  // }

  // Future<Null> future_delay_dialog(int duration_seconds) {
  //   return Future.delayed(Duration(seconds: duration_seconds), () {
  //     if (mounted) {
  //       // Display the dialog with a builder function
  //       showDialog(
  //         context: context,
  //         barrierDismissible: false, // Prevent closing by tapping outside
  //         builder: (BuildContext context) {
  //           return const AnimatedDialog();
  //         },
  //       );
  //     }
  //   });
  // }

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
                  showNavBar: false,
                  currentIndex: widget.currentIndex,
                  child: const ResponsiveLayout(
                    desktopBody: Desktop(),
                    mobileBody: Mobile(),
                    tabletBody: Tablet(),
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
                showNavBar: false,
                currentIndex: widget.currentIndex,
                child: const ResponsiveLayout(
                  desktopBody: Desktop(),
                  mobileBody: Mobile(),
                  tabletBody: Tablet(),
                ),
              ),
            ),
    );
  }
}
