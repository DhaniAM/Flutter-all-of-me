import 'package:flutter/material.dart';

import 'my_constant.dart';

class CvPage extends StatefulWidget {
  const CvPage({Key? key}) : super(key: key);

  @override
  State<CvPage> createState() => _CvPageState();
}

class _CvPageState extends State<CvPage> {
  static const TextStyle _headerStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    // color: Colors.white,
  );

  static const TextStyle _skillHeader1Style = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );
  static const TextStyle _skillHeader2Style = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    decoration: TextDecoration.underline,
  );

  static const TextStyle _contentHeaderStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  final List<bool> _isOpen = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  final BoxDecoration _panelContentDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        myLightGreen,
        Colors.white,
      ],
    ),
  );

  static const Divider cvDivider = Divider(
    color: myDarkGreen,
    height: 50,
    thickness: 0.8,
  );

  // bool _buttonValue = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'Curriculum Vitae',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Image.asset(
                  'assets/img/profile.jpg',
                  width: 150,
                ),
              ),
              const SizedBox(height: 16),

              /// Button toggle
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Switch(
              //     value: _buttonValue,
              //     splashRadius: 30,
              //     activeColor: myDarkGreen,
              //     activeTrackColor: myWhite,
              //     inactiveThumbColor: myRed,
              //     inactiveTrackColor: myWhite,
              //     onChanged: (value) {
              //       setState(() {
              //         _buttonValue = value;
              //         for (int i = 0; i < _isOpen.length; i++) {
              //           _isOpen[i] = value;
              //         }
              //       });
              //     },
              //   ),
              // ),
              const SizedBox(height: 10),

              // Expansion List
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: ExpansionPanelList(
                  elevation: 6,
                  dividerColor: myWhite,
                  expansionCallback: (panelIndex, isExpanded) {
                    setState(() {
                      _isOpen[panelIndex] = !_isOpen[panelIndex];
                    });
                  },
                  children: <ExpansionPanel>[
                    // Education
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            'Education',
                            style: _headerStyle,
                          ),
                        );
                      },
                      backgroundColor: myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            // Polanka
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Text>[
                                Text(
                                  'Assosiate Degree',
                                  style: _contentHeaderStyle,
                                ),
                                Text('2017 - 2020'),
                              ],
                            ),
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.health_and_safety_outlined,
                                  color: myRed,
                                ),
                                Text('Medical Laboratory Technologist'),
                              ],
                            ),
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.school,
                                  color: myRed,
                                ),
                                Text(' Politeknik Unggulan Kalimantan'),
                              ],
                            ),
                            const SizedBox(height: 20),

                            // Unsia
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const <Text>[
                                Text(
                                  'Bachelor Degree',
                                  style: _contentHeaderStyle,
                                ),
                                Text('2022 - now'),
                              ],
                            ),
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.computer,
                                  color: myRed,
                                ),
                                Text(' Computer Science'),
                              ],
                            ),
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.school,
                                  color: myRed,
                                ),
                                Text(' Universitas Siber Asia'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen[0],
                      canTapOnHeader: true,
                      // backgroundColor: myLightGreen,
                    ),

                    // Organization Experiences
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            'Organization Experiences',
                            style: _headerStyle,
                          ),
                        );
                      },
                      backgroundColor: myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            // BEM 1
                            const Text(
                              'Student Executive Council',
                              style: _contentHeaderStyle,
                            ),
                            const Text(
                              'Staff of Communication & Information Department',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  color: myRed,
                                ),
                                Text(
                                  ' 2017 - 2018',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            cvDivider,

                            // HIMA 1
                            const Text(
                              'Student Association of Medical Laboratory Technologist',
                              style: _contentHeaderStyle,
                            ),
                            const Text('Staff of External & Internal Division'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  color: myRed,
                                ),
                                Text(
                                  ' 2017 - 2018',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            cvDivider,

                            // BEM 2
                            const Text(
                              'Student Executive Council',
                              style: _contentHeaderStyle,
                            ),
                            const Text(
                                'Head of Communication & Information Department'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  color: myRed,
                                ),
                                Text(
                                  ' 2018 - 2019',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            cvDivider,

                            // HIMA 2
                            const Text(
                              'Student Association of Medical Laboratory Technologist',
                              style: _contentHeaderStyle,
                            ),
                            const Text(
                                'Staff of Communication & Information Department'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  color: myRed,
                                ),
                                Text(
                                  ' 2018 - 2019',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            cvDivider,

                            // BEM 2
                            const Text(
                              'Medical Laboratory Technologist Seminar',
                              style: _contentHeaderStyle,
                            ),
                            const Text(
                                'Coordinator of Communication & Information Division'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  color: myRed,
                                ),
                                Text(
                                  ' 2019 - 2020',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen[1],
                      canTapOnHeader: true,
                    ),

                    // Job Experiences
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            'Job Experiences',
                            style: _headerStyle,
                          ),
                        );
                      },
                      backgroundColor: myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            // Job 1
                            Text(
                              'Medical Laboratory Technologist of Pathological Clinic',
                              style: _contentHeaderStyle,
                            ),
                            Text('Sari Mulia Hospital, Banjarmasin'),
                            Text('February 2021 - July 2021'),
                            SizedBox(height: 20),
                            // Job 2
                            Text(
                              'Medical Laboratory Technologist',
                              style: _contentHeaderStyle,
                            ),
                            Text('Asy Syaafi Medical Clinic, Banjarmasin'),
                            Text('November 2021 - Now'),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen[2],
                      canTapOnHeader: true,
                    ),

                    // Achievement
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            'Achievements',
                            style: _headerStyle,
                          ),
                        );
                      },
                      backgroundColor: myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            // 1
                            Text(
                              'Rank 1 Highest Final Exam Score in Banjarmasin / South Borneo',
                              style: _contentHeaderStyle,
                            ),
                            Text('2017 | SMK Unggulan Husada'),
                            SizedBox(height: 20),
                            // 2
                            Text(
                              'Rank 1 Highest GPA Score in College',
                              style: _contentHeaderStyle,
                            ),
                            Text('2020 | Politeknik Unggulan Kalimantan'),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen[3],
                      canTapOnHeader: true,
                    ),

                    // Skills & Expertises
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            'Skills & Expertises',
                            style: _headerStyle,
                          ),
                        );
                      },
                      backgroundColor: myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            // Soft Skills
                            const Text(
                              'Soft Skills',
                              style: _skillHeader1Style,
                            ),
                            const Text(
                              'Self Learning',
                              style: _skillHeader2Style,
                            ),
                            const Text(
                              'Able to study and explore new knowledge with no guidance',
                            ),
                            const Text(
                              'Quick Learning',
                              style: _skillHeader2Style,
                            ),
                            const Text(
                              'Able to learn new knowledge quickly within limited amount of time',
                            ),
                            const Text(
                              'Critical Thinking',
                              style: _skillHeader2Style,
                            ),
                            const Text(
                              'Able to see in many perspective and explore many possibilities of any subject',
                            ),
                            const Text(
                              'Problem Solving',
                              style: _skillHeader2Style,
                            ),
                            const Text(
                              'Able to see the cause of a problem and find an efficient way to solve it',
                            ),
                            const Text(
                              'Time Management',
                              style: _skillHeader2Style,
                            ),
                            const Text(
                                'Able to finish task within a limited amount of time'),
                            const SizedBox(height: 20),

                            // Technical Skills
                            const Text(
                              'Technical Skills',
                              style: _skillHeader1Style,
                            ),
                            Wrap(
                              spacing: 6,
                              children: const <Chip>[
                                Chip(
                                  label: Text('Dart'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('Flutter'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('Git'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('GitHub'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('JavaScript'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('HTML'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('CSS'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('React JS'),
                                  backgroundColor: myWhite,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),

                            // Other Skills
                            const Text(
                              'Other Skills',
                              style: _skillHeader1Style,
                            ),
                            Wrap(
                              spacing: 6,
                              children: const <Chip>[
                                Chip(
                                  label: Text('Figma'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('Adobe Photoshop'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('Adobe Illustrator'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('Adobe Premiere Pro'),
                                  backgroundColor: myWhite,
                                ),
                                Chip(
                                  label: Text('Adobe After Effects'),
                                  backgroundColor: myWhite,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen[4],
                      canTapOnHeader: true,
                    ),

                    // Course Experiences
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            'Course Experiences',
                            style: _headerStyle,
                          ),
                        );
                      },
                      backgroundColor: myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Dicoding
                            Image.asset(
                              'assets/img/dicoding.jpg',
                              width: 200,
                            ),
                            const SizedBox(height: 10),

                            // Dart
                            const Text(
                              'Dart',
                              style: _skillHeader2Style,
                            ),
                            const Text('Start Programming with Dart (20 hrs)'),
                            const Text('SOLID Principles (15 hrs)'),
                            const SizedBox(height: 10),

                            // Flutter
                            const Text(
                              'Flutter',
                              style: _skillHeader2Style,
                            ),
                            const Text('Flutter for Beginner (40 hrs)'),
                            const Text('Fundamental of Flutter (70 hrs)'),
                            const Text('Flutter for Expert (70 hrs)'),
                            const SizedBox(height: 10),

                            // Front end
                            const Text(
                              'Front-End',
                              style: _skillHeader2Style,
                            ),
                            const Text('Basic of Web Programming (55 hrs)'),
                            const Text('JavaScript for Beginner (45 hrs)'),
                            const Text('Front-End for Beginner (36 hrs)'),
                            const Text(
                                'Learn using Line Front-End Framework (LIFF) (40 hrs)'),
                            const SizedBox(height: 10),

                            // Back end
                            const Text(
                              'Back-End',
                              style: _skillHeader2Style,
                            ),
                            const Text(
                                'Computer Network for Beginner (25 hrs)'),
                            const Text(
                                'Cloud Practitioner Essentials (Basic of AWS Cloud) (13 hrs)'),
                            const Text('Back-End for Beginner (45 hrs)'),
                            const SizedBox(height: 10),

                            // DevOps
                            const Text(
                              'DevOps',
                              style: _skillHeader2Style,
                            ),
                            const Text('Basic of DevOps (15 hrs)'),
                            const SizedBox(height: 10),

                            // Machine Learning
                            const Text(
                              'Machine Learning',
                              style: _skillHeader2Style,
                            ),
                            const Text('Programming using Python (20 hrs)'),
                            const Text(
                                'Machine Learning for Beginners (30 hrs)'),
                            const SizedBox(height: 10),

                            // Progate
                            Image.asset(
                              'assets/img/progate.png',
                              width: 200,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Text>[
                                    Text('HTML & CSS Course'),
                                    Text('JavaScript Course'),
                                    Text('jQuery Course'),
                                    Text('React Course'),
                                    Text('SQL Course'),
                                    Text('SASS Course'),
                                    Text('Git Course'),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Text>[
                                    Text('Python Course'),
                                    Text('PHP Course'),
                                    Text('GO Course'),
                                    Text('Java Course'),
                                    Text('Ruby Course'),
                                    Text('Ruby on Rails5 Course'),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),

                            // Sololearn
                            Image.asset(
                              'assets/img/sololearn.png',
                              width: 200,
                            ),
                            const Text('HTMl Course'),
                            const Text('CSS Course'),
                            const Text('JavaScript Course'),
                            const Text('SQL Course'),
                            const Text('C++ Course'),
                            const SizedBox(height: 10),

                            // Cakap
                            Image.asset(
                              'assets/img/cakap.png',
                              width: 200,
                            ),
                            const Text('Learn UI/UX Design using Figma'),
                            const SizedBox(height: 10),

                            // Binus
                            Image.asset(
                              'assets/img/binus.png',
                              width: 200,
                            ),
                            const Text(
                                'Learn Object Oriented Programming with Java'),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen[5],
                      canTapOnHeader: true,
                    ),

                    // Interest
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            'Interests',
                            style: _headerStyle,
                          ),
                        );
                      },
                      backgroundColor: myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.flag),
                                Text('Android Development'),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(Icons.flag),
                                Text('Cross-Platform Development'),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(Icons.flag),
                                Text('Dart'),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(Icons.flag),
                                Text('Flutter'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen[6],
                      canTapOnHeader: true,
                    ),

                    // Language
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 15, top: 12),
                          child: Text(
                            'Languages',
                            style: _headerStyle,
                          ),
                        );
                      },
                      backgroundColor: myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.flag),
                                Text('Indonesia | Native Proficiency'),
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(Icons.flag),
                                Text(
                                    'English | Professional Working Proficiency'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isExpanded: _isOpen[7],
                      canTapOnHeader: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
