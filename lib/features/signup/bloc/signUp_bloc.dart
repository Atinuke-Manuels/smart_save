import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_save/features/signup/bloc/signUp_state.dart';

import '../repository/signup_repository.dart';

class SignupBloc extends Cubit<SignupState> {
  SignupBloc() : super(SignupState.empty);

  SignupRepository signupRepository = SignupRepository();

  Future<bool> registerUser({
    required String userName,
    required String emailAddress,
    required String password,
  }) async {
    //show processing state
    emit(state.copyWith(signupStatus: SignupStatus.Processing));

    try {
      print("Got to try catch section");
      await signupRepository.registerUser(
        email: emailAddress,
        password: password,
      );

      emit(state.copyWith(signupStatus: SignupStatus.Successful));
      return true;
    } on FirebaseAuthException catch (e) {
      print("Got to firebase error section");
      emit(state.copyWith(signupStatus: SignupStatus.Error));
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('An account already exists for that email.');
      }
      return false;
    } catch (e) {
      print("Got to error section");
      emit(state.copyWith(signupStatus: SignupStatus.Error));
      print(e);
      return false;
    }
  }



  Future<bool> loginUser({
    required String emailAddress,
    required String password,
  }) async {
    try {
      await signupRepository.loginUser(
        email: emailAddress,
        password: password,
      );

      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }

      return false;
    } catch (e) {
      print('An error occurred during login: $e');
      return false;
    }
  }
}