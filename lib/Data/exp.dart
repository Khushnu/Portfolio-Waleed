// ignore_for_file: camel_case_types

class Experience {
  final String companyName;
  final String role;
  final String startTime;
  final String endTime;
  final String workType;
  final String duration;
  final bool start;
  final bool end;

  Experience(
      {required this.companyName,
      required this.role,
      required this.startTime,
      required this.endTime,
      required this.workType,
      required this.start,
      required this.end,
      required this.duration});
}

List<Experience> experiences = [
  Experience(
    role: 'Flutter Developer',
    companyName: 'Crifly',
    startTime: 'May 2023',
    endTime: 'Present',
    workType: 'On-Site',
    duration: '1 year 9 months',
    start: true,
    end: false,
  ),
  Experience(
    role: 'Xamarin Forms Developer',
    companyName: 'ANP (Political Party)',
    startTime: 'Aug 2019',
    endTime: 'Oct 2019',
    workType: 'On-Site',
    duration: '2 months',
    start: true,
    end: true,
  ),

  Experience(
    role: 'Android Java Developer',
    companyName: 'VR Developers',
    startTime: 'May 2018 ',
    endTime: 'October 2018',
    workType: 'On-Site',
    duration: '6 months',
    start: true,
    end: true,
  ),
];
