import 'package:all_of_me/contact_button.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'My Contact',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              height: 1,
            ),
          ),
        ),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(30),
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          crossAxisCount: 2,
          shrinkWrap: true,
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
              socialMediaName: 'Email',
              url: 'dhani.a.mm@gmail.com',
            ),
            ContactButton(
              imgLocation: 'assets/img/web.png',
              socialMediaName: 'Website',
              url: 'https://dhaniam.github.io/My-CV-2',
            ),
            ContactButton(
              imgLocation: 'assets/img/whatsapp.png',
              socialMediaName: 'WhatsApp',
              url: 'https://wa.me/6287816754336/',
            ),
          ],
        ),
      ],
    );
  }
}
