import 'package:task_intern_3_flutter/import.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.homeCubit});

  final HomeCubit homeCubit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
