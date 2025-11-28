import 'package:flutter/material.dart';

import '../../../../core/presentation/buttons/jolly_primary_button.dart';
import '../../../../core/presentation/input_validation/jolly_input_validation.dart';
import '../../../../core/presentation/text_fields/jolly_text_field.dart';
import '../../../../core/presentation/text_styles/jolly_text_styles.dart';
import '../../../../core/presentation/view/jolly_view.dart';
import '../../../../core/presentation/sizes/jolly_sizes.dart';
import '../../../../core/presentation/strings/jolly_strings.dart';
import '../view_model/login_view_model.dart';
import '../widget/jolly_auth_header.dart';

class Login extends StatefulWidget {
  final LoginViewModel viewModel;
  const Login({super.key, required this.viewModel});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with JollyInputValidationMixin {
  @override
  void initState() {
    super.initState();
    widget.viewModel.bind(context);
    widget.viewModel.listenForError(context);
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, child) {
        return JollyView(
          content: Scaffold(
            body: Form(
              key: widget.viewModel.formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: JollySizes.s16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: JollySizes.topSpacing(context)),
                    JollyAuthHeader(),
                    SizedBox(height: JollySizes.s37),
                    Text(widget.viewModel.loggedInUser != null ? JollyStrings.welcomeBack : JollyStrings.login, style: JollyTextStyles.extraBold),
                    SizedBox(height: JollySizes.s30),
                    Padding(
                      padding: EdgeInsets.only(left: JollySizes.s16),
                      child: Text(JollyStrings.phoneNumber, style: JollyTextStyles.semiBold),
                    ),
                    SizedBox(height: JollySizes.s6),
                    JollyTextField(
                      enabled: !widget.viewModel.loginCommand.running,
                      keyboardType: TextInputType.phone,
                      controller: widget.viewModel.phoneNumberController,
                      validator: validatePhoneNumber,
                    ),
                    SizedBox(height: JollySizes.s23),
                    Padding(
                      padding: EdgeInsets.only(left: JollySizes.s16),
                      child: Text(JollyStrings.password, style: JollyTextStyles.semiBold),
                    ),
                    SizedBox(height: JollySizes.s6),
                    JollyTextField(
                      enabled: !widget.viewModel.loginCommand.running,
                      obscureText: widget.viewModel.obscurePassword,
                      keyboardType: TextInputType.visiblePassword,
                      controller: widget.viewModel.passwordController,
                      suffixIcon: GestureDetector(
                        onTap: widget.viewModel.togglePasswordVisibility,
                        child: Icon(widget.viewModel.obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                      ),
                      validator: validatePassword,
                    ),
                    Expanded(child: SizedBox()),
                    JollyPrimaryButton(
                      enabled: !widget.viewModel.loginCommand.running,
                      showLoading: widget.viewModel.loginCommand.running,
                      text: JollyStrings.login,
                      onPressed: () {
                        widget.viewModel.loginCommand.execute(context);
                      },
                    ),
                    SizedBox(height: JollySizes.s73),
                    SizedBox(height: JollySizes.bottomSpacing(context)),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
