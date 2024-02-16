import 'package:task_intern_3_flutter/import.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.profileCubit});

final ProfileCubit profileCubit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
