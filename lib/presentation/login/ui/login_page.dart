import 'package:flutter/material.dart';
import 'package:football_app_test/presentation/login/ui/widget/bottom_sheet/sign_in_bottom_sheet.dart';
import 'package:football_app_test/presentation/login/ui/widget/component/checkbox_widget.dart';
import 'package:football_app_test/presentation/login/ui/widget/component/normal_text_field.dart';
import 'package:football_app_test/presentation/login/ui/widget/component/secure_text_field.dart';
import 'package:football_app_test/presentation/login/ui/widget/login_button.dart';
import 'package:football_app_test/presentation/login/ui/widget/login_images.dart';
import 'package:football_app_test/presentation/login/ui/widget/login_text.dart';
import 'package:football_app_test/presentation/style/color.dart';
import 'package:football_app_test/presentation/utils/dialog_utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  List<FocusNode> _focusNode = [
    FocusNode(),
    FocusNode()
  ];

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final keyFormLogin = GlobalKey<FormState>();
  final keyCheckBoxRemember = GlobalKey<CheckboxWidgetState>();
  final keyTextFieldEmail = GlobalKey<NormalTextFieldWidgetState>();
  final keyTextFieldPassword = GlobalKey<SecureTextFieldState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    for (var focus in _focusNode) {
      focus.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstraint.black2,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LoginImage(),
          LoginTitle(),
          LoginButton(
              onPressedSignIn: ()=> navigateToBottomSheet(buildLoginBottomSheet(context)),
              onPressedSingUp: () {}
          ),
          SizedBox(height: MediaQuery.of(context).size.width * 0.1,)
        ],
      ),
    );
  }

  Widget buildLoginBottomSheet(BuildContext context) {
    return Form(
      key: keyFormLogin,
      child: SignInBottomSheet(
        widgetEmail: NormalTextFieldWidget(
          key: keyTextFieldEmail,
          title: "Email",
          controller: emailController,
          focusNode: _focusNode[0],
          imageLeading: 'assets/icons/message.png',
        ),
        widgetPassword: SecureTextField(
          key: keyTextFieldPassword,
          title: "Password",
          controller: passwordController,
          focusNode: _focusNode[1],
          imageLeading: 'assets/icons/password.png',
          imageTrailing: 'assets/icons/hide.png',
        ),
        widgetCheckBox: CheckboxWidget(
          key: keyCheckBoxRemember,
          title: "Remember Me"
        ),
        onPressedSignIn: () async {
          await logicSignIn(context);
        },
        onPressedRegister: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  Future<void> logicSignIn(BuildContext context) async {
    FocusManager.instance.primaryFocus!.unfocus();
    print('email: ${emailController.text} ,password: ${passwordController.text}');
    final stateCheckbox = keyCheckBoxRemember.currentState!;
    final stateHidePassword = keyTextFieldPassword.currentState!;
    print("checkbox: ${stateCheckbox.isCheck}");
    print("hide password: ${stateHidePassword.isSecureText}");

    Navigator.of(context).pop();

    if (!(keyFormLogin.currentState!.validate()) || emailController.text.isEmpty || passwordController.text.isEmpty) {
      DialogUtils().showErrorDialog(
        context: context,
        title: "Email and Password is required",
        buttonText: "OK",
        listenerOK: (){
          Navigator.of(context).pop();
          navigateToBottomSheet(buildLoginBottomSheet(context));
        }
      );
    } else if (!emailController.text.contains("@") || !emailController.text.contains(".")) {
      DialogUtils().showErrorDialog(
          context: context,
          title: "Email is incorrect",
          buttonText: "OK",
          listenerOK: (){
            Navigator.of(context).pop();
            navigateToBottomSheet(buildLoginBottomSheet(context));
          }
      );
    }
    else {
      DialogUtils().showLoadingDialog(context: context);
      await Future.delayed(Duration(seconds: 3));
      Navigator.of(context).pop();
      Get.toNamed('/splash');
    }
  }

  void navigateToBottomSheet(Widget child) {
    showModalBottomSheet(
      backgroundColor: ColorConstraint.black1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(46)
          )
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) => child
    );
  }

}
