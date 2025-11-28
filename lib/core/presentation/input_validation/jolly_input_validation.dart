import '../strings/jolly_strings.dart';

mixin JollyInputValidationMixin {
  String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return JollyStrings.phoneNumberRequired;
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return JollyStrings.passwordRequired;
    }
    return null;
  }
}
