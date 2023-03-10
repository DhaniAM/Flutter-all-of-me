import 'package:flutter/material.dart';

// void main() {
//   runApp(const RegisterPage());
// }

class RegisterPage extends StatelessWidget {
  static const registerPageRoute = '/register-page';
  const RegisterPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 159, 224, 255),
            border: Border.all(
              color: Colors.grey,
              width: 2,
            ),
          ),
          padding: const EdgeInsets.all(8),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 100,
                child: FlutterLogo(size: 50),
              ),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'John',
                    labelText: 'First Name *',
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Doe',
                    labelText: 'Last Name *',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
