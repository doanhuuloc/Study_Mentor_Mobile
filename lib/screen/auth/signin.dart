import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/provider/user.dart';
import 'package:study_mentor_mobile/shared/widget/customDivider.dart';
import 'package:study_mentor_mobile/shared/widget/customTextField.dart';

import '../../services/user/user_api.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController =
      TextEditingController(text: "lapdoan.010102@gmail.com");
  final FocusNode _focusNodeEmail = FocusNode();
  bool _isFocusEmail = false;
  final TextEditingController _passwordController =
      TextEditingController(text: "123456789");
  final FocusNode _focusNodePassword = FocusNode();
  bool _isFocusPassword = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _focusNodeEmail.addListener(() {
      setState(() {
        _isFocusEmail = _focusNodeEmail.hasFocus;
      });
    });
    _focusNodePassword.addListener(() {
      setState(() {
        _isFocusPassword = _focusNodePassword.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _focusNodeEmail.dispose();
    _focusNodePassword.dispose();
  }

  String? validEmail(String value) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    return null;
  }

  String? validPassword(String value) {
    return null;
  }

  _loginByATS() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      final response = await UserApi.login(
          email: _emailController.text, password: _passwordController.text);
      print("haha data $response");
      context.read<UserViewModel>().initData(response["data"]);

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xff2E4182),
          ),
          child: Form(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 10),
              const Text(
                "Welcom to StudyMentor",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "Sign in your account",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                controller: _emailController,
                focusNode: _focusNodeEmail,
                isfocus: _isFocusEmail,
                hintText: "Enter email",
                validator: validEmail,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                textStyle: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _passwordController,
                focusNode: _focusNodePassword,
                isfocus: _isFocusPassword,
                hintText: "Enter Password",
                validator: validPassword,
                isPasswordField: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                textStyle: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  // Navigator.pushNamed(context, Routes.forgot);
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20),
              _isLoading
                  ? Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: theme.primaryColor,
                          borderRadius: BorderRadius.circular(12)),
                      height: 50,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )
                  : ElevatedButton(
                      onPressed: () async {
                        await _loginByATS();
                        print("haha go");
                        context.go("/");
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(theme.primaryColor),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)))),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.only(
                  top: 15,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(child: CustomDivider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "or",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(child: CustomDivider()),
                  ],
                ),
              ),
              // SizedBox(
              //     width: MediaQuery.of(context).size.width * 0.5,
              //     child: const MethodsLogin()),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => context.go("/signup"),
                    child: Text(
                      "Create Account",
                      style: TextStyle(color: theme.primaryColor, fontSize: 14),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
