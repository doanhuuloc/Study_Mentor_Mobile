import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/provider/user.dart';
import 'package:study_mentor_mobile/services/user/user_api.dart';
import 'package:study_mentor_mobile/shared/widget/customDivider.dart';
import 'package:study_mentor_mobile/shared/widget/customTextField.dart';
import 'package:study_mentor_mobile/shared/widget/selectOption.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;
  final FocusNode _focusNodeName = FocusNode();
  bool _isFocusName = false;

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _focusNodeEmail = FocusNode();
  bool _isFocusEmail = false;

  String? gender;

  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _focusNodePassword = FocusNode();
  bool _isFocusPassword = false;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _focusNodeName.addListener(() {
      setState(() {
        _isFocusName = _focusNodeName.hasFocus;
      });
    });

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
    _focusNodeName.dispose();
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

  _signup() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      final Map<String, dynamic> data = {
        "fullName": _nameController.text,
        "email": _emailController.text,
        "gender": gender == "male" ? 0 : 1,
        "password": _passwordController.text,
        "type": 0
      };

      final response = await UserApi.signup(data);
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
                "Create your account",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                controller: _nameController,
                focusNode: _focusNodeName,
                isfocus: _isFocusName,
                hintText: "Enter your full name",
                validator: validEmail,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                textStyle: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 15),
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

              SelectOption(
                focusNode: FocusNode(),
                selectedOption: gender,
                placeholder: "Select your gender",
                updateSelecedOption: (String value) {
                  setState(() {
                    gender = value;
                  });
                },
                textColor: Colors.white,
                backgroundColor: Colors.transparent,
                enableBorderSide:
                    const BorderSide(color: Colors.white, width: 1),
                options: const ["male", "female"],
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
                        await _signup();
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
                          "Sign up",
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
                    "Do you have an account?",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => context.go("/login"),
                    child: Text(
                      "Sign in Now",
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
