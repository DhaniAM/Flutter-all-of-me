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
    // decoration: TextDecoration.underline,
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
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[
        MyColor.myLightGreen2,
        Colors.white,
      ],
    ),
  );

  static const Divider _cvDivider = Divider(
    color: MyColor.myDarkGreen,
    height: 50,
    thickness: 0.8,
  );

  static const Color _chipColor = MyColor.myLightGreen2;

  static const FlutterLogo _flutterLogo = FlutterLogo(size: 30);

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
                  dividerColor: MyColor.myWhite,
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
                      backgroundColor: MyColor.myLightGreen,
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
                                  color: MyColor.myRed,
                                ),
                                Text('Medical Laboratory Technologist'),
                              ],
                            ),
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.school,
                                  color: MyColor.myRed,
                                ),
                                Text(' Politeknik Unggulan Kalimantan'),
                              ],
                            ),
                            _cvDivider,

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
                                  color: MyColor.myRed,
                                ),
                                Text(' Computer Science'),
                              ],
                            ),
                            Row(
                              children: const <Widget>[
                                Icon(
                                  Icons.school,
                                  color: MyColor.myRed,
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
                      backgroundColor: MyColor.myLightGreen,
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
                                  color: MyColor.myRed,
                                ),
                                Text(
                                  ' 2017 - 2018',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            _cvDivider,

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
                                  color: MyColor.myRed,
                                ),
                                Text(
                                  ' 2017 - 2018',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            _cvDivider,

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
                                  color: MyColor.myRed,
                                ),
                                Text(
                                  ' 2018 - 2019',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            _cvDivider,

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
                                  color: MyColor.myRed,
                                ),
                                Text(
                                  ' 2018 - 2019',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            _cvDivider,

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
                                  color: MyColor.myRed,
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
                      backgroundColor: MyColor.myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Job 1
                            const Text(
                              'Medical Laboratory Technologist of Pathological Clinic',
                              style: _contentHeaderStyle,
                            ),
                            const Text('Sari Mulia Hospital  |  Banjarmasin'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  color: MyColor.myRed,
                                ),
                                Text(' February 2021 - July 2021'),
                              ],
                            ),
                            _cvDivider,
                            // Job 2
                            const Text(
                              'Medical Laboratory Technologist',
                              style: _contentHeaderStyle,
                            ),
                            const Text(
                                'Asy Syaafi Medical Clinic  |  Banjarmasin'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const <Widget>[
                                Icon(
                                  Icons.calendar_month,
                                  color: MyColor.myRed,
                                ),
                                Text(' November 2021 - Now'),
                              ],
                            ),
                            const SizedBox(height: 10),
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
                      backgroundColor: MyColor.myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // 1
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Expanded>[
                                const Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.emoji_events_outlined,
                                    color: MyColor.myRed,
                                    size: 30,
                                    semanticLabel: 'Trophy',
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Text>[
                                      Text(
                                        'Rank 1 Highest Final Exam Score in Banjarmasin / South Borneo',
                                        style: _contentHeaderStyle,
                                      ),
                                      Text('2017 | SMK Unggulan Husada'),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            _cvDivider,
                            // 2
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Expanded>[
                                const Expanded(
                                  flex: 1,
                                  child: Icon(
                                    Icons.emoji_events_outlined,
                                    color: MyColor.myRed,
                                    size: 30,
                                    semanticLabel: 'Trophy',
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const <Text>[
                                      Text(
                                        'Rank 1 Highest GPA Score in College',
                                        style: _contentHeaderStyle,
                                      ),
                                      Text(
                                          '2020 | Politeknik Unggulan Kalimantan'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
                      backgroundColor: MyColor.myLightGreen,
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

                            const ListTile(
                              leading: Icon(
                                Icons.manage_accounts,
                                color: MyColor.myRed,
                              ),
                              minLeadingWidth: 20,
                              title: Text(
                                'Self Learning',
                                style: _skillHeader2Style,
                              ),
                              subtitle: Text(
                                'Able to study and explore new knowledge with no guidance',
                              ),
                            ),
                            const ListTile(
                              leading: Icon(
                                Icons.fast_forward_outlined,
                                color: MyColor.myRed,
                              ),
                              minLeadingWidth: 20,
                              title: Text(
                                'Quick Learning',
                                style: _skillHeader2Style,
                              ),
                              subtitle: Text(
                                'Able to learn new knowledge quickly within limited amount of time',
                              ),
                            ),
                            const ListTile(
                              leading: Icon(
                                Icons.electric_bolt,
                                color: MyColor.myRed,
                              ),
                              minLeadingWidth: 20,
                              title: Text(
                                'Critical Thinking',
                                style: _skillHeader2Style,
                              ),
                              subtitle: Text(
                                'Able to see in many perspective and explore many possibilities of any subject',
                              ),
                            ),
                            const ListTile(
                              leading: Icon(
                                Icons.lightbulb,
                                color: MyColor.myRed,
                              ),
                              minLeadingWidth: 20,
                              title: Text(
                                'Problem Solving',
                                style: _skillHeader2Style,
                              ),
                              subtitle: Text(
                                'Able to see the cause of a problem and find an efficient way to solve it',
                              ),
                            ),
                            const ListTile(
                              leading: Icon(
                                Icons.hourglass_bottom,
                                color: MyColor.myRed,
                              ),
                              minLeadingWidth: 20,
                              title: Text(
                                'Time Management',
                                style: _skillHeader2Style,
                              ),
                              subtitle: Text(
                                  'Able to finish task within a limited amount of time'),
                            ),

                            _cvDivider,

                            // Technical Skills
                            const Text(
                              'Technical Skills',
                              style: _skillHeader1Style,
                            ),
                            Wrap(
                              spacing: 16,
                              children: <Chip>[
                                Chip(
                                  label: const Text('Dart'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset('assets/logo/dart.png'),
                                ),
                                const Chip(
                                  label: Text('Flutter'),
                                  backgroundColor: _chipColor,
                                  avatar: _flutterLogo,
                                ),
                                Chip(
                                  label: const Text('Git'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset('assets/logo/git.png'),
                                ),
                                Chip(
                                  label: const Text('GitHub'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset('assets/logo/github.png'),
                                ),
                                Chip(
                                  label: const Text('JavaScript'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/js.png',
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                                Chip(
                                  label: const Text('HTML'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/html.png',
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                                Chip(
                                  label: const Text('CSS'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset('assets/logo/css.png'),
                                ),
                                Chip(
                                  label: const Text('React JS'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset('assets/logo/react.png'),
                                ),
                              ],
                            ),
                            _cvDivider,

                            // Other Skills
                            const Text(
                              'Other Skills',
                              style: _skillHeader1Style,
                            ),
                            Wrap(
                              spacing: 16,
                              children: <Chip>[
                                Chip(
                                  label: const Text('Figma'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset('assets/logo/figma.png'),
                                ),
                                Chip(
                                  label: const Text('Adobe Photoshop'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/ps.png',
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                                Chip(
                                  label: const Text('Adobe Illustrator'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/ai.png',
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                                Chip(
                                  label: const Text('Adobe Premiere Pro'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/pr.png',
                                    width: 22,
                                    height: 22,
                                  ),
                                ),
                                Chip(
                                  label: const Text('Adobe After Effects'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/ae.png',
                                    width: 22,
                                    height: 22,
                                  ),
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
                      backgroundColor: MyColor.myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Dicoding
                            Image.asset(
                              'assets/img/dicoding.png',
                              height: 60,
                            ),
                            const SizedBox(height: 10),

                            // Dart
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/dart.png',
                                width: 30,
                              ),
                              title: const Text(
                                'Start Programming with Dart',
                                // style: _skillHeader2Style,
                              ),
                              subtitle: const Text(
                                '20 hours  |  2022',
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/dart.png',
                                width: 30,
                              ),
                              title: const Text(
                                'SOLID Principles',
                                // style: _skillHeader2Style,
                              ),
                              subtitle: const Text(
                                '15 hours  |  2022',
                              ),
                            ),
                            _cvDivider,

                            // Flutter

                            const ListTile(
                              leading: _flutterLogo,
                              title: Text(
                                'Flutter for Beginner',
                              ),
                              subtitle: Text(
                                '40 hours  |  2022',
                              ),
                            ),
                            const ListTile(
                              leading: _flutterLogo,
                              title: Text(
                                'Fundamental of Flutter',
                              ),
                              subtitle: Text(
                                '70 hours  |  2022',
                              ),
                            ),

                            const ListTile(
                              leading: _flutterLogo,
                              title: Text(
                                'Flutter for Expert',
                              ),
                              subtitle: Text(
                                '70 hours  |  2022',
                              ),
                            ),
                            _cvDivider,

                            // Front end
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/html.png',
                                width: 30,
                              ),
                              title: const Text(
                                'Basic of Web Programming',
                              ),
                              subtitle: const Text(
                                '55 hours  |  2022',
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/js.png',
                                width: 30,
                              ),
                              title: const Text(
                                'JavaScript for Beginner',
                              ),
                              subtitle: const Text(
                                '45 hours  |  2022',
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/css.png',
                                width: 30,
                              ),
                              title: const Text(
                                'Front-End for Beginner',
                              ),
                              subtitle: const Text(
                                '36 hours  |  2022',
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/html.png',
                                width: 30,
                              ),
                              title: const Text(
                                'Learn using Line Front-End Framework (LIFF)',
                              ),
                              subtitle: const Text(
                                '40 hours  |  2022',
                              ),
                            ),
                            _cvDivider,

                            // Back end
                            const ListTile(
                              leading: Icon(
                                Icons.wifi,
                                color: MyColor.myRed,
                                size: 25,
                              ),
                              title: Text(
                                'Computer Network for Beginner',
                              ),
                              subtitle: Text(
                                '25 hours  |  2022',
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/aws.png',
                                width: 32,
                              ),
                              title: const Text(
                                'Cloud Practitioner Essentials (Basic of AWS Cloud)',
                              ),
                              subtitle: const Text(
                                '13 hours  |  2022',
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/node.png',
                                width: 30,
                              ),
                              title: const Text(
                                'Back-End for Beginner',
                              ),
                              subtitle: const Text(
                                '45 hours  |  2022',
                              ),
                            ),
                            _cvDivider,

                            // DevOps

                            ListTile(
                              leading: Image.asset(
                                'assets/logo/devops.png',
                                width: 35,
                              ),
                              title: const Text(
                                'Basic of DevOps',
                              ),
                              subtitle: const Text(
                                '15 hours  |  2022',
                              ),
                            ),
                            _cvDivider,

                            // Machine Learning
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/python.png',
                                width: 30,
                              ),
                              title: const Text(
                                'Programming using Python',
                              ),
                              subtitle: const Text(
                                '20 hours  |  2022',
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/python.png',
                                width: 30,
                              ),
                              title: const Text(
                                'Machine Learning for Beginners',
                              ),
                              subtitle: const Text(
                                '30 hours  |  2022',
                              ),
                            ),
                            _cvDivider,

                            // Progate
                            Image.asset(
                              'assets/img/progate.png',
                              height: 60,
                            ),
                            Wrap(
                              spacing: 16,
                              alignment: WrapAlignment.center,
                              children: const <Chip>[
                                Chip(
                                  label: Text('HTML & CSS Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('JavaScript Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('jQuery Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('React Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('SQL Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('SASS Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('Git Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('Python Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('PHP Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('GO Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('Java Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('Ruby Course'),
                                  backgroundColor: _chipColor,
                                ),
                                Chip(
                                  label: Text('Ruby on Rails5 Course'),
                                  backgroundColor: _chipColor,
                                ),
                              ],
                            ),
                            _cvDivider,

                            // Sololearn
                            Image.asset(
                              'assets/img/sololearn.png',
                              height: 60,
                            ),
                            Wrap(
                              spacing: 16,
                              alignment: WrapAlignment.center,
                              children: [
                                Chip(
                                  label: const Text('HTML Course'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/html.png',
                                    width: 20,
                                  ),
                                ),
                                Chip(
                                  label: const Text('CSS Course'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/css.png',
                                    width: 20,
                                  ),
                                ),
                                Chip(
                                  label: const Text('JavaScript Course'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/js.png',
                                    width: 20,
                                  ),
                                ),
                                Chip(
                                  label: const Text('SQL Course'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset('assets/logo/sql.png'),
                                ),
                                Chip(
                                  label: const Text('C++ Course'),
                                  backgroundColor: _chipColor,
                                  avatar: Image.asset(
                                    'assets/logo/cpp.png',
                                    width: 20,
                                  ),
                                ),
                              ],
                            ),
                            _cvDivider,

                            // Cakap
                            Image.asset(
                              'assets/img/cakap.png',
                              height: 60,
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/figma.png',
                                width: 30,
                              ),
                              title:
                                  const Text('Learn UI/UX Design using Figma'),
                              subtitle: const Text('2022'),
                            ),

                            _cvDivider,

                            // Binus
                            Image.asset(
                              'assets/img/binus.png',
                              height: 70,
                            ),
                            const SizedBox(height: 10),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/java.png',
                                width: 40,
                              ),
                              title: const Text(
                                  'Learn Object Oriented Programming with Java'),
                              subtitle: const Text('2022'),
                            ),
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
                      backgroundColor: MyColor.myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/android.png',
                                height: 35,
                              ),
                              title: const Text(
                                'Android Development',
                                style: _skillHeader2Style,
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/cpd.png',
                                height: 35,
                              ),
                              title: const Text(
                                'Cross-Platform Development',
                                style: _skillHeader2Style,
                              ),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/logo/dart.png',
                                height: 35,
                              ),
                              title: const Text(
                                'Dart',
                                style: _skillHeader2Style,
                              ),
                            ),
                            const ListTile(
                              leading: _flutterLogo,
                              title: Text(
                                'Flutter',
                                style: _skillHeader2Style,
                              ),
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
                      backgroundColor: MyColor.myLightGreen,
                      body: Container(
                        decoration: _panelContentDecoration,
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ListTile(
                              leading: Image.asset(
                                'assets/img/indo.png',
                                height: 43,
                              ),
                              title: const Text(
                                'Bahasa Indonesia',
                                style: _skillHeader2Style,
                              ),
                              subtitle: const Text('Native Proficiency'),
                            ),
                            ListTile(
                              leading: Image.asset(
                                'assets/img/uk.png',
                                height: 40,
                              ),
                              title: const Text(
                                'English',
                                style: _skillHeader2Style,
                              ),
                              subtitle: const Text(
                                  'Professional Working Proficiency'),
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
