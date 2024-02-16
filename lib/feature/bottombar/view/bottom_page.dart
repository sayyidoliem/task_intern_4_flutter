import 'package:task_intern_3_flutter/import.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);

  List<BottomNavigationBarItem> navItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Schedule'),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    BottomBarCubit myBottomBarCubit = context.read<BottomBarCubit>();
    HomeCubit myHomeCubit = context.read<HomeCubit>();
    ScheduleCubit myScheduleCubit = context.read<ScheduleCubit>();
    ProfileCubit myProfileCubit = context.read<ProfileCubit>();
    List<Widget> homeBody = <Widget>[
      HomePage(
        homeCubit: myHomeCubit,
      ),
      SchedulePage(
        scheduleCubit: myScheduleCubit,
      ),
      ProfilePage(
        profileCubit: myProfileCubit,
      ),
    ];

    return BlocBuilder<BottomBarCubit, BottomBarState>(
      bloc: myBottomBarCubit,
      builder: (context, state) {
        return Scaffold(
          body: homeBody.elementAt(state.tabIndex),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            items: navItems,
            currentIndex: state.tabIndex,
            elevation: 0,
            selectedItemColor: Theme.of(context).colorScheme.onPrimary,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              myBottomBarCubit.changeTab(index);
            },
          ),
        );
      },
    );
  }
}
