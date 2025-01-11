

class Project {
  final String image;

  final String title;
  final String description;
  final String icon;
  final List<String> listTechStack;
  // final String flutterSvg;
  // final String dartSvg;
  final String keyFeatures;
  final String githubLink;
  final String demoVideoLink;
  final String screenshot1;
  final String screenshot2;

  Project({
    required this.image,
    required this.title,
    required this.description,
    required this.icon,
    required this.listTechStack,
    // required this.flutterSvg,
    // required this.dartSvg,
    required this.keyFeatures,
    required this.githubLink,
    required this.demoVideoLink,
    required this.screenshot1,
    required this.screenshot2,
  });
}

List<Project> projects = [
  Project(
    image: "assets/ss/s1.png",
    title: "Tonomo",
    description:
        "Tonomo a Desktop & Mobile app which used to manage equipment rental bussiness with local database and firebase integrated.",
    icon: "assets/ss/res.png",
    listTechStack: [
      "assets/svg/flutter.svg", 
      "assets/svg/dart.svg", 
      "assets/svg/api.svg", 

    ],
    keyFeatures:
        "• Manage Euipment \n• Calendar for tracking \n• User-Friendly Interface \n• Reminder",
    githubLink: "https://github.com/Khushnu/tonomo",
    demoVideoLink: "https://www.linkedin.com/feed/update/urn:li:activity:7144938835196522496/?originTrackingId=IBln6UQrSgi6InJWz4SuIg%3D%3D",
    screenshot1: "assets/ss/tonom.png",
    screenshot2: "assets/ss/tonom2.png",
  ),
  Project(
    image: "assets/ss/s2.png",
    title: "Camayas",
    description:
        "An online beauty proucts mobile app Camayas where every product at your finger tip.",
    icon: "assets/ss/makeup.png",
   listTechStack: [
      "assets/svg/flutter.svg", 
      "assets/svg/dart.svg", 
      "assets/svg/socket.svg"
    ],
    keyFeatures:
        "• User-Friendly UI \n• Online order tracking \n• Chat with seller \n• Responsive UI",
    githubLink: "https://github.com/Khushnu/camayas",
    demoVideoLink: "https://www.linkedin.com/feed/update/urn:li:activity:7201841514186977280/?originTrackingId=jpZ4imUCR4%2BESavQ3m64QA%3D%3D",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/ss/crypto.png",
    title: "Block Chain",
    description:
        "A Crypto App where user manage their crypto assets and the transcations.",
    icon: "assets/ss/digi.png",
    listTechStack: [
      "assets/svg/flutter.svg", 
      "assets/svg/dart.svg", 
      "assets/svg/firebase.svg", 
      "assets/svg/nodejs.svg"
    ],
    keyFeatures: "• Manage Crypto Transactions \n• Controll User activity  \n• Email Notifications \n• QR Code Scan",
    githubLink: "",
    demoVideoLink: "https://www.linkedin.com/feed/update/urn:li:activity:7160862877191454720/?originTrackingId=zsdM144fQ6ywHw%2FeNV%2BYUQ%3D%3D/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/ss/cv.png",
    title: "AI Resume Builder",
    description:
        "An AI Resume Builder which helps user to make their ATS friendly Resume without any efforts and with the help of AI.",
    icon: "assets/ss/cvv.png",
   listTechStack: [
      "assets/svg/flutter.svg", 
      "assets/svg/dart.svg"
    ],
    keyFeatures:
        "• Local Database \n• Multiple Resume Design \n• Download PDF feature\n• ATS Friendly Designs",
    githubLink: "https://github.com/nakuldevmv/Portfolio-Website",
    demoVideoLink: "https://nakuldevmv.github.io/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/ss/ss.png",
    title: "Nutrisync",
    description:
        "A digital fitness trainer which helps to get fit save your diet plan, it generate diet plan according to your age, 1000+ workouts etc",
    icon:"assets/ss/gym.png",
    listTechStack: [
      "assets/svg/flutter.svg", 
      "assets/svg/dart.svg", 
     "assets/svg/firebase.svg",
     "assets/svg/google.svg"
    ],
    keyFeatures: "• Diet Planner\n• Workout 1000+ \n• Simple UI \n• BMI Calculator \n• Custom Diet Plan Generator",
    githubLink: "",
    demoVideoLink: "https://www.linkedin.com/feed/update/urn:li:activity:7160862877191454720/?originTrackingId=h7g0%2FVaIRPaUkoUmWH9WYw%3D%3D",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  
];
