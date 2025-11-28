import 'package:flutter/material.dart';

import '../../../../core/navigation/navigation.dart';
import '../../../../core/navigation/router.dart';
import '../../../../core/presentation/snackbars/jolly_snackbars.dart';
import '../../../../core/presentation/view_model/jolly_view_model.dart';
import '../../../../core/shared/command.dart';
import '../../../../core/shared/result.dart';
import '../../data/models/login_dto.dart';
import '../../data/models/user.dart';
import '../../domain/usecases/get_user.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/save_last_login_time.dart';
import '../../domain/usecases/save_subscription.dart';
import '../../domain/usecases/save_token.dart';
import '../../domain/usecases/save_user.dart';
import '../../errors/errors.dart';

class LoginViewModel extends JollyViewModel with JollySnackbarsMixin {
  final Login login;
  final GetUser getUser;
  final SaveLastLoginTime saveLastLoginTime;
  final SaveToken saveToken;
  final SaveUser saveUser;
  final SaveSubscription saveSubscription;

  LoginViewModel(this.login, this.getUser, this.saveLastLoginTime, this.saveToken, this.saveUser, this.saveSubscription);

  final TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController get phoneNumberController => _phoneNumberController;

  final TextEditingController _passwordController = TextEditingController();
  TextEditingController get passwordController => _passwordController;

  late Command1<void, BuildContext> _loginCommand;
  Command1<void, BuildContext> get loginCommand => _loginCommand;

  bool _obscurePassword = true;
  bool get obscurePassword => _obscurePassword;

  User? _loggedInUser;
  User? get loggedInUser => _loggedInUser;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> get formKey => _formKey;

  @override
  void bind(BuildContext context) async {
    _loginCommand = Command1<void, BuildContext>(_login)
      ..addListener(() {
        notifyListeners();
      });

    final userResult = await getUser();
    userResult.when(
      onSuccess: (user) {
        _loggedInUser = user;
        if (user != null) {
          _phoneNumberController.text = user.phoneNumber;
        }
        notifyListeners();
      },
      onFailure: (error) {},
    );
  }

  @override
  void listenForError(BuildContext context) {
    errorStream.listen((error) {
      if (error is LoginError) {
        showErrorSnackbar(error, title: error.title);
      } else {
        showErrorSnackbar(error);
      }
    });
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void togglePasswordVisibility() {
    _obscurePassword = !_obscurePassword;
    notifyListeners();
  }

  LoginDto get loginDto => LoginDto(phoneNumber: _phoneNumberController.text, password: _passwordController.text);

  Future<Result<void>> _login(BuildContext context) async {
    FocusScope.of(context).unfocus();
    if (formKey.currentState?.validate() ?? false) {
      final loginResult = await login(loginDto);
      loginResult.when(
        onSuccess: (data) async {
          await saveToken(data.data.token);
          await saveUser(data.data.user);
          await saveSubscription(data.data.subscription);
          await saveLastLoginTime(DateTime.now());
          JollyNavigation.replace(JollyRoutes.root);
        },
        onFailure: (error) {
          addError(LoginError(message: error.message, code: error.code, originalError: error.originalError));
        },
      );
    }
    return Result.success(null);
  }
}
