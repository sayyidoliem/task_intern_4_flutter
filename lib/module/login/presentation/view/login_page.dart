import 'package:task_intern_3_flutter/import.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _codeController = TextEditingController();

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  final api = LoginService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Username"),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: _userNameController,
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'your username',
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
              const Text("Password"),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'your password',
                    icon: Icon(Icons.lock),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                    return null;
                  },
                ),
              ),
              const Text("Code"),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: _codeController,
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'your code',
                    icon: Icon(Icons.code),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FutureBuilder(
                    future: UserStorage.getCode(),
                    builder: (context, snapshoot) {
                      if (snapshoot.data == null) {
                        return const Text('Code: Value code kosong');
                      } else {
                        return Text('Code: ${snapshoot.data}');
                      }
                    },
                  ),
                  FutureBuilder(
                    future: UserStorage.getUserId(),
                    builder: (context, snapshoot) {
                      if (snapshoot.data == null) {
                        return const Text('User ID: Value user_id kosong');
                      } else {
                        return Text('User ID: ${snapshoot.data}');
                      }
                    },
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () async {
                  // final userName = _userNameController.text;
                  // final password = _passwordController.text;
                  // final code = _codeController.text;
                  const userName = "AlbertoJulius123";
                  const password = "123456";
                  const code = "Zegen678";
                  final result =
                      await LoginService().login(userName, password, code);
          
                  if (context.mounted) {
                    if (result == true) {
                      Navigator.pushNamed(context, RoutesName.bottomNav);
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          icon: const Icon(
                            Icons.warning_amber_outlined,
                            size: 48,
                          ),
                          title: const Text(
                            'Error Occured',
                          ),
                          content:
                              const Text('Wrong Email, Password, Or Code!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('dismiss'),
                            )
                          ],
                        ),
                      );
                    }
                    setState(() {});
                  }
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
