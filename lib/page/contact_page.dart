import 'package:flutter/material.dart';

import '../common/my_constant.dart';
import '../widget/contact_button.dart';

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
            'Contact',
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
              imgLocation: MyImage.linkedin,
              socialMediaName: 'LinkedIn',
              url: 'https://www.linkedin.com/in/ramadhani-a-a9a3a1193',
            ),
            ContactButton(
              imgLocation: MyImage.github,
              socialMediaName: 'GitHub',
              url: 'https://github.com/DhaniAM',
            ),
            ContactButton(
              imgLocation: MyImage.gmail,
              socialMediaName: 'Email',
              url: 'dhani.a.mm@gmail.com',
            ),
            ContactButton(
              imgLocation: MyImage.web,
              socialMediaName: 'Website',
              url: 'https://dhaniam.github.io/My-CV-2',
            ),
            ContactButton(
              imgLocation: MyImage.whatsapp,
              socialMediaName: 'WhatsApp',
              url: 'https://wa.me/6287816754336/',
            ),
          ],
        ),
      ],
    );
  }
}
