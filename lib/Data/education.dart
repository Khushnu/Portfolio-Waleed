class Education {
  final String institutionName;
  final String department;
  final String startTime;
  final String endTime; // Nullable end time
  final String grade;
  final bool start;
  final bool end; // Nullable grade

  Education(
      {required this.institutionName,
      required this.department,
      required this.startTime,
      required this.endTime,
      required this.grade,
      required this.start,
      required this.end});
}

List<Education> educations = [
  Education(
      institutionName: 'PMAS Arid Agriculture\nUniversity Rawalpindi',
      startTime: 'Oct 2020',
      endTime: 'Nov 2022',
      department: 'MS (CS)',
      grade: '',
      start: true,
      end: false),
  // Education(
  //   institutionName: 'Naan Mudhalvan',
  //   startTime: 'Sep 2023',
  //   endTime: 'Jul 2026',
  //   department: '',
  //   grade: '',
  //    start: false,

  // ),
  Education(
      institutionName: 'Bacha Khan University \nCharsadda KPK',
      startTime: 'Aug 2014',
      endTime: 'May 2018',
      department: 'BS (CS)',
      grade: '',
      start: false,
      end: false),
  
];
