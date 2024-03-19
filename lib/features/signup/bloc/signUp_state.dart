import 'package:equatable/equatable.dart';

enum SignupStatus { Initial, Processing, Successful, Error }

class SignupState extends Equatable {
  const SignupState({
    required this.userName,
    required this.emailAddress,
    required this.password,
    this.signupStatus = SignupStatus.Initial,
  });

  final String userName;
  final String emailAddress;
  final String password;
  final SignupStatus signupStatus;

  static SignupState empty =
      SignupState(userName: "", emailAddress: "", password: "");

  @override
  List<Object?> get props => [
        userName,
        emailAddress,
        password,
        signupStatus,
      ];

  SignupState copyWith({
    String? userName,
    String? emailAddress,
    String? password,
    SignupStatus? signupStatus,
  }) {
    return SignupState(
      userName: userName ?? this.userName,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      signupStatus: signupStatus ?? this.signupStatus,
    );
  }
}

class SignupInitial extends SignupState {
  const SignupInitial({
    required String userName,
    required String emailAddress,
    required String password,
  }) : super(
          userName: userName,
          emailAddress: emailAddress,
          password: password,
          signupStatus: SignupStatus.Initial,
        );
}

class SignupProcessing extends SignupState {
  const SignupProcessing({
    required String userName,
    required String emailAddress,
    required String password,
  }) : super(
          userName: userName,
          emailAddress: emailAddress,
          password: password,
          signupStatus: SignupStatus.Processing,
        );
}

class SignupSuccessful extends SignupState {
  const SignupSuccessful({
    required String userName,
    required String emailAddress,
  }) : super(
          userName: userName,
          emailAddress: emailAddress,
          password: '',
          signupStatus: SignupStatus.Successful,
        );
}

class SignupError extends SignupState {
  final String errorMessage;

  const SignupError({
    required String userName,
    required String emailAddress,
    required String password,
    required this.errorMessage,
  }) : super(
          userName: userName,
          emailAddress: emailAddress,
          password: password,
          signupStatus: SignupStatus.Error,
        );
}
