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
              const Text(
                'Curriculum Vitae',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
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
                    body: Text('content'),
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
                    body: Text('content'),
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
                    body: Text('content'),
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
