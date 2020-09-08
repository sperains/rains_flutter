import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      onSignup: null,
      onLogin: null,
      onRecoverPassword: (e) {
        print(e);
      },
      title: "登录",
      logo: "assets/images/cart.png",
      messages: LoginMessages(
        usernameHint: '请输入用户名',
        passwordHint: "请输入密码",
        loginButton: "登录",
        signupButton: "注册",
        forgotPasswordButton: "忘记密码？",
        confirmPasswordHint: "确认密码",
        recoverPasswordIntro: "在这里重置您的密码",
        recoverPasswordDescription: "我们将发送验证信息到您的邮箱",
        recoverPasswordButton: "发送",
        goBackButton: "返回",
      ),
      emailValidator: (str) {
        return 'null';
      },
      passwordValidator: (str) {
        return 'null';
      },

    );
  }
}
