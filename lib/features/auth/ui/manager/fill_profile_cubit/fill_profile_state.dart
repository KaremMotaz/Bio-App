part of 'fill_profile_cubit.dart';

@immutable
sealed class FillProfileState {}

final class FillProfileInitialState extends FillProfileState {}

final class FillProfileLoadingState extends FillProfileState {}

final class FillProfileSuccessState extends FillProfileState {
  final StudentEntity studentEntity;

  FillProfileSuccessState({required this.studentEntity});
}

final class FillProfileFailureState extends FillProfileState {
  final String message;
  FillProfileFailureState({required this.message});
}

final class FillProfileImageSelectedState extends FillProfileState {
  final File? selectedImage;
  final String selectedAvatarPath;

  FillProfileImageSelectedState(this.selectedImage, this.selectedAvatarPath);
}
