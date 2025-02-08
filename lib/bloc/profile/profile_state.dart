part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    ProfileModel? profileData,
    required bool isLoading,
  }) = _ProfileState;
  factory ProfileState.initial() => const ProfileState(
        isLoading: true,
      );
}
