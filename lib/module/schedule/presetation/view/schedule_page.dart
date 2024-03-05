import 'package:task_intern_3_flutter/import.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key, required this.scheduleCubit});

final ScheduleCubit scheduleCubit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
