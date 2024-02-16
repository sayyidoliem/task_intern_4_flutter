import 'package:task_intern_3_flutter/import.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Username"),
            SizedBox(width: 200, child: TextFormField()),
            const Text("Password"),
            SizedBox(width: 200, child: TextFormField()),
            const Text("Code"),
            SizedBox(width: 200, child: TextFormField()),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.bottomNav);
                },
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}
