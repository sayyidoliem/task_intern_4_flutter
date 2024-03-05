import 'package:task_intern_3_flutter/import.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileService profileService;
  ProfileCubit(this.profileService) : super(ProfileInitial());

  void onLoadedProfile() async {
    emit(ProfileLoading());
    await Future.delayed(const Duration(seconds: 3));
    try {
      final result = await profileService.fetchUser();
      emit(ProfileSuccess(profile: result));
    } catch (e) {
      emit(ProfileError());
    }
  }
}
