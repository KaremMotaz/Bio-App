import 'package:biocode/features/auth/domain/auth_repo.dart';
import 'package:biocode/features/auth/domain/user_entity.dart';
import 'package:biocode/generated/l10n.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitialState());

  final AuthRepo authRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> signinWithEmailAndPassword({required S locale}) async {
    emit(SigninLoadingState());
    final result = await authRepo.signinWithEmailAndPassword(
      password: passwordController.text,
      email: emailController.text,
      locale: locale,
    );
    result.fold((failure) {
      emit(SigninFailureState(message: failure.errMessage));
    }, (userEntity) {
      emit(SigninSuccessState(userEntity: userEntity));
    });
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }

  Future<void> signinWithGoogle({required S locale}) async {
    emit(SigninLoadingState());
    final result = await authRepo.signinWithGoogle(locale: locale);
    result.fold((failure) {
      emit(SigninFailureState(message: failure.errMessage));
    }, (userEntity) {
      emit(SigninSuccessState(userEntity: userEntity));
    });
  }

  Future<void> signinWithFacebook({required S locale}) async {
    emit(SigninLoadingState());
    final result = await authRepo.signinWithFacebook(locale: locale);
    result.fold((failure) {
      emit(SigninFailureState(message: failure.errMessage));
    }, (userEntity) {
      emit(SigninSuccessState(userEntity: userEntity));
    });
  }
}
