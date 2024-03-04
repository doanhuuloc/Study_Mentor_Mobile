import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/shared/widget/customDivider.dart';
import 'package:study_mentor_mobile/shared/widget/customTextField.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _focusNodeEmail = FocusNode();
  bool _isFocusEmail = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _focusNodeEmail.addListener(() {
      setState(() {
        _isFocusEmail = _focusNodeEmail.hasFocus;
      });
    });

  }

  @override
  void dispose() {
    super.dispose();
    _focusNodeEmail.dispose();
  }

  String? validEmail(String value) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

    return null;
  }



  void _loginByATS() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

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
          padding: EdgeInsets.symmetric(horizontal: 30),
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xff2E4182),
          ),
          child: Form(
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 10),
              Text(
                "Welcom to StudyMentor",
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Reset your password",
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(height: 30),
              CustomTextField(
                controller: _emailController,
                focusNode: _focusNodeEmail,
                isfocus: _isFocusEmail,
                hintText: "Enter email",
                validator: validEmail,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                textStyle: const TextStyle(color: Colors.white),
              ),
        
       
              SizedBox(height: 20),
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
                      onPressed: () {
                        // _loginByATS();
                        
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
                        child: Text(
                          "Send",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.only(
                  top: 15,
                ),
                padding: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(child: CustomDivider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "or",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    const Expanded(child: CustomDivider()),
                  ],
                ),
              ),
              // SizedBox(
              //     width: MediaQuery.of(context).size.width * 0.5,
              //     child: const MethodsLogin()),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you have an account?",
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => context.go("/signin"),
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
