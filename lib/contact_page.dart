import 'package:all_of_me/contact_button.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      child: Center(
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(30),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 2,
          shrinkWrap: true,
          // childAspectRatio: 2,
          children: const <ContactButton>[
            ContactButton(
              imgLocation: 'assets/img/linkedin.png',
              socialMediaName: 'LinkedIn',
              url: 'https://www.linkedin.com/in/ramadhani-a-a9a3a1193',
            ),
            ContactButton(
              imgLocation: 'assets/img/github.png',
              socialMediaName: 'GitHub',
              url: 'https://github.com/DhaniAM',
            ),
            ContactButton(
              imgLocation: 'assets/img/gmail.png',
              socialMediaName: 'LinkedIn',
              url: 'https://mailto:dhani.aa.mm@gmail.com/',
            ),
            ContactButton(
              imgLocation: 'assets/img/web.png',
              socialMediaName: 'Website',
              url: 'https://dhaniam.github.io/My-CV-2',
            ),
            ContactButton(
              imgLocation: 'assets/img/linkedin.png',
              socialMediaName: 'WhatsApp',
              url: '087816754336',
            ),
          ],
        ),
      ),
    );
  }
}
