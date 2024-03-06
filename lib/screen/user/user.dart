import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_mentor_mobile/shared/widget/customTextField.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final FocusNode _focusNodeName = FocusNode();
  bool _isFocusName = false;

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _focusNodeEmail = FocusNode();
  bool _isFocusEmail = false;

  final TextEditingController _phoneController = TextEditingController();
  final FocusNode _focusNodePhone = FocusNode();
  bool _isFocusPhone = false;

  @override
  void initState() {
    super.initState();
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

    _focusNodePhone.addListener(() {
      setState(() {
        _isFocusPhone = _focusNodePhone.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      bottomSheet: Container(
        margin: const EdgeInsets.only(right: 30, left: 30, bottom: 30),
        padding: const EdgeInsets.symmetric(vertical: 10),
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor),
        child: const Text(
          "Save",
          style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(5),
                          child: const Icon(Icons.edit,color: Colors.white,size: 20,),
                        ))
                  ],
                ),
              ),
              const Text(
                "Họ và tên",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextField(
                  controller: _nameController,
                  focusNode: _focusNodeName,
                  isfocus: _isFocusName,
                  hintText: "Nhập họ và tên",
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.grey)),
                  validator: (value) {
                    return null;
                  }),
              const SizedBox(height: 15),
              const Text(
                "Email",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextField(
                  controller: _emailController,
                  focusNode: _focusNodeEmail,
                  isfocus: _isFocusEmail,
                  hintText: "Nhập email",
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.grey)),
                  validator: (value) {
                    return null;
                  }),
              const SizedBox(height: 15),
              const Text(
                "Số điện thoại",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextField(
                  controller: _phoneController,
                  focusNode: _focusNodePhone,
                  isfocus: _isFocusPhone,
                  hintText: "Nhập số điện thoại",
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.grey)),
                  validator: (value) {
                    return null;
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
