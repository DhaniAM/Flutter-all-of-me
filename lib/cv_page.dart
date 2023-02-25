import 'package:all_of_me/my_constant.dart';
import 'package:flutter/material.dart';

class CvPage extends StatefulWidget {
  const CvPage({Key? key}) : super(key: key);

  @override
  State<CvPage> createState() => _CvPageState();
}

class _CvPageState extends State<CvPage> {
  static const TextStyle _headerStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: myLightGreen,
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
              ExpansionPanelList(
                elevation: 1,
                dividerColor: myYellow,
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    _isOpen[panelIndex] = !_isOpen[panelIndex];
                  });
                },
                children: <ExpansionPanel>[
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
                    body: Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          // Polanka
                          const Text('Assosiate Degree'),
                          const Text('Medical Laboratory Technologist'),
                          const Text('2017 - 2020'),
                          Row(
                            children: const [
                              Icon(Icons.school),
                              Text(' Politeknik Unggulan Kalimantan'),
                            ],
                          ),
                          const SizedBox(height: 20),

                          // Unsia
                          const Text('Bachelor Degree'),
                          const Text('Computer Science'),
                          const Text('2022 - now'),
                          Row(
                            children: const [
                              Icon(Icons.school),
                              Text(' Universitas Siber Asia'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[0],
                    canTapOnHeader: true,
                  ),
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
                    body: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          // BEM 1
                          Text('Student Executive Council'),
                          Text(
                              'Staff of Communication & Information Department'),
                          Text('2017 - 2018'),
                          SizedBox(height: 20),

                          // HIMA 1
                          Text(
                              'Student Association of Medical Laboratory Technologist'),
                          Text('Staff of External & Internal Division'),
                          Text('2017 - 2018'),
                          SizedBox(height: 20),

                          // BEM 2
                          Text('Student Executive Council'),
                          Text(
                              'Head of Communication & Information Department'),
                          Text('2018 - 2019'),
                          SizedBox(height: 20),

                          // HIMA 2
                          Text(
                              'Student Association of Medical Laboratory Technologist'),
                          Text(
                              'Staff of Communication & Information Department'),
                          Text('2018 - 2019'),
                          SizedBox(height: 20),

                          // BEM 2
                          Text('Medical Laboratory Technologist Seminar'),
                          Text(
                              'Coordinator of Communication & Information Division'),
                          Text('2019 - 2020'),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[1],
                    canTapOnHeader: true,
                  ),
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
                    body: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          /// Job 1
                          Text(
                              'Medical Laboratory Technologist of Pathological Clinic'),
                          Text('Sari Mulia Hospital, Banjarmasin'),
                          Text('February 2021 - July 2021'),
                          SizedBox(height: 20),

                          /// Job 2
                          Text('Medical Laboratory Technologist'),
                          Text('Asy Syaafi Medical Clinic, Banjarmasin'),
                          Text('November 2021 - Now'),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[2],
                    canTapOnHeader: true,
                  ),
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
                    body: Text('content'),
                    isExpanded: _isOpen[3],
                    canTapOnHeader: true,
                  ),
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
                    body: Text(''),
                    isExpanded: _isOpen[4],
                    canTapOnHeader: true,
                  ),
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
                    body: Text('content'),
                    isExpanded: _isOpen[5],
                    canTapOnHeader: true,
                  ),
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
                    body: Text('content'),
                    isExpanded: _isOpen[6],
                    canTapOnHeader: true,
                  ),
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
                    body: Text('content'),
                    isExpanded: _isOpen[7],
                    canTapOnHeader: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
