import 'package:all_of_me/provider/cv_panel_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/my_constant.dart';

class CvPage extends StatelessWidget {
  const CvPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            Image.asset(
              MyImage.profile,
              width: 150,
              semanticLabel: 'Ramadhani Adjar Mustaqim profile picture',
            ),

            const SizedBox(height: 24),

            // Expansion List
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
              ),
              child: Consumer<CvPanelProvider>(
                builder: (_, provider, __) {
                  List<bool> isOpen = provider.getIsOpen();
                  return ExpansionPanelList(
                    elevation: 6,
                    dividerColor: MyColor.myWhite,
                    expansionCallback: (panelIndex, isExpanded) {
                      provider.isOpen = panelIndex;
                    },
                    children: <ExpansionPanel>[
                      // Education
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, top: 12),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.school,
                                  color: MyColor.myRed,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Education',
                                  style: MyStyle.headerStyle,
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: MyColor.myLightGreen,
                        body: Container(
                          decoration: MyStyle.panelContentDecoration,
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              // Polanka
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const <Text>[
                                  Text(
                                    'Assosiate Degree',
                                    style: MyStyle.contentHeaderStyle,
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
                              MyStyle.cvDivider,

                              // Unsia
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const <Text>[
                                  Text(
                                    'Bachelor Degree',
                                    style: MyStyle.contentHeaderStyle,
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
                        isExpanded: isOpen[0],
                        canTapOnHeader: true,
                        // backgroundColor: myLightGreen,
                      ),

                      // Organization Experiences
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, top: 12),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.people_alt,
                                  color: MyColor.myRed,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Organization Experiences',
                                  style: MyStyle.headerStyle,
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: MyColor.myLightGreen,
                        body: Container(
                          decoration: MyStyle.panelContentDecoration,
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              // BEM 1
                              const Text(
                                'Student Executive Council',
                                style: MyStyle.contentHeaderStyle,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              MyStyle.cvDivider,

                              // HIMA 1
                              const Text(
                                'Student Association of Medical Laboratory Technologist',
                                style: MyStyle.contentHeaderStyle,
                              ),
                              const Text(
                                  'Staff of External & Internal Division'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const <Widget>[
                                  Icon(
                                    Icons.calendar_month,
                                    color: MyColor.myRed,
                                  ),
                                  Text(
                                    ' 2017 - 2018',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              MyStyle.cvDivider,

                              // BEM 2
                              const Text(
                                'Student Executive Council',
                                style: MyStyle.contentHeaderStyle,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              MyStyle.cvDivider,

                              // HIMA 2
                              const Text(
                                'Student Association of Medical Laboratory Technologist',
                                style: MyStyle.contentHeaderStyle,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              MyStyle.cvDivider,

                              // BEM 2
                              const Text(
                                'Medical Laboratory Technologist Seminar',
                                style: MyStyle.contentHeaderStyle,
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                        isExpanded: isOpen[1],
                        canTapOnHeader: true,
                      ),

                      // Job Experiences
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, top: 12),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.work_history,
                                  color: MyColor.myRed,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Job Experiences',
                                  style: MyStyle.headerStyle,
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: MyColor.myLightGreen,
                        body: Container(
                          decoration: MyStyle.panelContentDecoration,
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              // Job 1
                              const Text(
                                'Medical Laboratory Technologist of Pathological Clinic',
                                style: MyStyle.contentHeaderStyle,
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
                              MyStyle.cvDivider,
                              // Job 2
                              const Text(
                                'Medical Laboratory Technologist',
                                style: MyStyle.contentHeaderStyle,
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
                        isExpanded: isOpen[2],
                        canTapOnHeader: true,
                      ),

                      // Achievement
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, top: 12),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.stars,
                                  color: MyColor.myRed,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Achievements',
                                  style: MyStyle.headerStyle,
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: MyColor.myLightGreen,
                        body: Container(
                          decoration: MyStyle.panelContentDecoration,
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
                                          style: MyStyle.contentHeaderStyle,
                                        ),
                                        Text('2017 | SMK Unggulan Husada'),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              MyStyle.cvDivider,
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
                                          style: MyStyle.contentHeaderStyle,
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
                        isExpanded: isOpen[3],
                        canTapOnHeader: true,
                      ),

                      // Skills & Expertises
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, top: 12),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.settings,
                                  color: MyColor.myRed,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Skills & Expertises',
                                  style: MyStyle.headerStyle,
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: MyColor.myLightGreen,
                        body: Container(
                          decoration: MyStyle.panelContentDecoration,
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              // Soft Skills
                              const Text(
                                'Soft Skills',
                                style: MyStyle.skillHeader1Style,
                              ),

                              const ListTile(
                                leading: Icon(
                                  Icons.manage_accounts,
                                  color: MyColor.myRed,
                                ),
                                minLeadingWidth: 20,
                                title: Text(
                                  'Self Learning',
                                  style: MyStyle.skillHeader2Style,
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
                                  style: MyStyle.skillHeader2Style,
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
                                  style: MyStyle.skillHeader2Style,
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
                                  style: MyStyle.skillHeader2Style,
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
                                  style: MyStyle.skillHeader2Style,
                                ),
                                subtitle: Text(
                                    'Able to finish task within a limited amount of time'),
                              ),

                              MyStyle.cvDivider,

                              // Technical Skills
                              const Text(
                                'Technical Skills',
                                style: MyStyle.skillHeader1Style,
                              ),
                              Wrap(
                                spacing: 16,
                                children: <Chip>[
                                  Chip(
                                    label: const Text('Dart'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.dart),
                                  ),
                                  const Chip(
                                    label: Text('Flutter'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: MyStyle.cvFlutterLogo,
                                  ),
                                  Chip(
                                    label: const Text('Git'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.git),
                                  ),
                                  Chip(
                                    label: const Text('GitHub'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.github),
                                  ),
                                  Chip(
                                    label: const Text('JavaScript'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.js,
                                      width: 22,
                                      height: 22,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('HTML'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.html,
                                      width: 22,
                                      height: 22,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('CSS'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.css),
                                  ),
                                  Chip(
                                    label: const Text('React JS'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.react),
                                  ),
                                ],
                              ),
                              MyStyle.cvDivider,

                              // Other Skills
                              const Text(
                                'Other Skills',
                                style: MyStyle.skillHeader1Style,
                              ),
                              Wrap(
                                spacing: 16,
                                children: <Chip>[
                                  Chip(
                                    label: const Text('Figma'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.figma),
                                  ),
                                  Chip(
                                    label: const Text('Adobe Photoshop'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.ps,
                                      width: 22,
                                      height: 22,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('Adobe Illustrator'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.ai,
                                      width: 22,
                                      height: 22,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('Adobe Premiere Pro'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.pr,
                                      width: 22,
                                      height: 22,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('Adobe After Effects'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.ae,
                                      width: 22,
                                      height: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        isExpanded: isOpen[4],
                        canTapOnHeader: true,
                      ),

                      // Course Experiences
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, top: 12),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.history_edu_outlined,
                                  color: MyColor.myRed,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Course Experiences',
                                  style: MyStyle.headerStyle,
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: MyColor.myLightGreen,
                        body: Container(
                          decoration: MyStyle.panelContentDecoration,
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Dicoding
                              Image.asset(
                                MyImage.dicoding,
                                height: 60,
                              ),
                              const SizedBox(height: 10),

                              // Dart
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.dart,
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
                                  MyLogo.dart,
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
                              MyStyle.cvDivider,

                              // Flutter

                              const ListTile(
                                leading: MyStyle.cvFlutterLogo,
                                title: Text(
                                  'Flutter for Beginner',
                                ),
                                subtitle: Text(
                                  '40 hours  |  2022',
                                ),
                              ),
                              const ListTile(
                                leading: MyStyle.cvFlutterLogo,
                                title: Text(
                                  'Fundamental of Flutter',
                                ),
                                subtitle: Text(
                                  '70 hours  |  2022',
                                ),
                              ),

                              const ListTile(
                                leading: MyStyle.cvFlutterLogo,
                                title: Text(
                                  'Flutter for Expert',
                                ),
                                subtitle: Text(
                                  '70 hours  |  2022',
                                ),
                              ),
                              MyStyle.cvDivider,

                              // Front end
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.html,
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
                                  MyLogo.js,
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
                                  MyLogo.css,
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
                                  MyLogo.html,
                                  width: 30,
                                ),
                                title: const Text(
                                  'Learn using Line Front-End Framework (LIFF)',
                                ),
                                subtitle: const Text(
                                  '40 hours  |  2020',
                                ),
                              ),
                              MyStyle.cvDivider,

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
                                  MyLogo.aws,
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
                                  MyLogo.node,
                                  width: 30,
                                ),
                                title: const Text(
                                  'Back-End for Beginner',
                                ),
                                subtitle: const Text(
                                  '45 hours  |  2022',
                                ),
                              ),
                              MyStyle.cvDivider,

                              // DevOps

                              ListTile(
                                leading: Image.asset(
                                  MyLogo.devops,
                                  width: 35,
                                ),
                                title: const Text(
                                  'Basic of DevOps',
                                ),
                                subtitle: const Text(
                                  '15 hours  |  2022',
                                ),
                              ),
                              MyStyle.cvDivider,

                              // Machine Learning
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.python,
                                  width: 30,
                                ),
                                title: const Text(
                                  'Programming using Python',
                                ),
                                subtitle: const Text(
                                  '20 hours  |  2020',
                                ),
                              ),
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.python,
                                  width: 30,
                                ),
                                title: const Text(
                                  'Machine Learning for Beginners',
                                ),
                                subtitle: const Text(
                                  '30 hours  |  2020',
                                ),
                              ),
                              MyStyle.cvDivider,

                              // Progate
                              Image.asset(
                                MyImage.progate,
                                height: 60,
                              ),
                              Wrap(
                                spacing: 16,
                                alignment: WrapAlignment.center,
                                children: <Chip>[
                                  Chip(
                                    label: const Text('HTML & CSS Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.html),
                                  ),
                                  Chip(
                                    label: const Text('JavaScript Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.js),
                                  ),
                                  Chip(
                                    label: const Text('jQuery Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.jquery),
                                  ),
                                  Chip(
                                    label: const Text('React Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.react),
                                  ),
                                  Chip(
                                    label: const Text('SQL Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.sql),
                                  ),
                                  Chip(
                                    label: const Text('SASS Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.sass),
                                  ),
                                  Chip(
                                    label: const Text('Git Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.git),
                                  ),
                                  Chip(
                                    label: const Text('Python Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.python),
                                  ),
                                  Chip(
                                    label: const Text('PHP Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.php),
                                  ),
                                  Chip(
                                    label: const Text('GO Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.go),
                                  ),
                                  Chip(
                                    label: const Text('Java Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.java),
                                  ),
                                  Chip(
                                    label: const Text('Ruby Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.ruby,
                                      height: 22,
                                      width: 22,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('Ruby on Rails5 Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.rails),
                                  ),
                                ],
                              ),
                              MyStyle.cvDivider,

                              // Sololearn
                              Image.asset(
                                MyImage.sololearn,
                                height: 60,
                              ),
                              Wrap(
                                spacing: 16,
                                alignment: WrapAlignment.center,
                                children: [
                                  Chip(
                                    label: const Text('HTML Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.html,
                                      width: 20,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('CSS Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.css,
                                      width: 20,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('JavaScript Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.js,
                                      width: 20,
                                    ),
                                  ),
                                  Chip(
                                    label: const Text('SQL Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(MyLogo.sql),
                                  ),
                                  Chip(
                                    label: const Text('C++ Course'),
                                    backgroundColor: MyStyle.cvChipColor,
                                    avatar: Image.asset(
                                      MyLogo.cpp,
                                      width: 20,
                                    ),
                                  ),
                                ],
                              ),
                              MyStyle.cvDivider,

                              // Cakap
                              Image.asset(
                                MyImage.cakap,
                                height: 60,
                              ),
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.figma,
                                  width: 30,
                                ),
                                title: const Text(
                                    'Learn UI/UX Design using Figma'),
                                subtitle: const Text('2022'),
                              ),

                              MyStyle.cvDivider,

                              // Binus
                              Image.asset(
                                MyImage.binus,
                                height: 70,
                              ),
                              const SizedBox(height: 10),
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.java,
                                  width: 40,
                                ),
                                title: const Text(
                                    'Learn Object Oriented Programming with Java'),
                                subtitle: const Text('2022'),
                              ),
                            ],
                          ),
                        ),
                        isExpanded: isOpen[5],
                        canTapOnHeader: true,
                      ),

                      // Interest
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, top: 12),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.favorite,
                                  color: MyColor.myRed,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Interests',
                                  style: MyStyle.headerStyle,
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: MyColor.myLightGreen,
                        body: Container(
                          decoration: MyStyle.panelContentDecoration,
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.android,
                                  height: 35,
                                ),
                                title: const Text(
                                  'Android Development',
                                  style: MyStyle.skillHeader2Style,
                                ),
                              ),
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.cpd,
                                  height: 35,
                                ),
                                title: const Text(
                                  'Cross-Platform Development',
                                  style: MyStyle.skillHeader2Style,
                                ),
                              ),
                              ListTile(
                                leading: Image.asset(
                                  MyLogo.dart,
                                  height: 35,
                                ),
                                title: const Text(
                                  'Dart',
                                  style: MyStyle.skillHeader2Style,
                                ),
                              ),
                              const ListTile(
                                leading: MyStyle.cvFlutterLogo,
                                title: Text(
                                  'Flutter',
                                  style: MyStyle.skillHeader2Style,
                                ),
                              ),
                            ],
                          ),
                        ),
                        isExpanded: isOpen[6],
                        canTapOnHeader: true,
                      ),

                      // Language
                      ExpansionPanel(
                        headerBuilder: (context, isExpanded) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 15, top: 12),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.language,
                                  color: MyColor.myRed,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Languages',
                                  style: MyStyle.headerStyle,
                                ),
                              ],
                            ),
                          );
                        },
                        backgroundColor: MyColor.myLightGreen,
                        body: Container(
                          decoration: MyStyle.panelContentDecoration,
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  MyImage.indo,
                                  height: 43,
                                ),
                                title: const Text(
                                  'Bahasa Indonesia',
                                  style: MyStyle.skillHeader2Style,
                                ),
                                subtitle: const Text('Native Proficiency'),
                              ),
                              ListTile(
                                leading: Image.asset(
                                  MyImage.uk,
                                  height: 40,
                                ),
                                title: const Text(
                                  'English',
                                  style: MyStyle.skillHeader2Style,
                                ),
                                subtitle: const Text(
                                    'Professional Working Proficiency'),
                              ),
                            ],
                          ),
                        ),
                        isExpanded: isOpen[7],
                        canTapOnHeader: true,
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
