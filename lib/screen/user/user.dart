import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:study_mentor_mobile/provider/user.dart';
import 'package:study_mentor_mobile/services/user/user_api.dart';
import 'package:study_mentor_mobile/shared/widget/customTextField.dart';
import 'package:study_mentor_mobile/utilities/image_picker_func.dart';

import '../../shared/widget/selectOption.dart';
import 'widgets/dateField.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late final TextEditingController _nameController;
  final FocusNode _focusNodeName = FocusNode();
  bool _isFocusName = false;

  late final TextEditingController _emailController;
  final FocusNode _focusNodeEmail = FocusNode();
  bool _isFocusEmail = false;

  late final TextEditingController _phoneController;
  final FocusNode _focusNodePhone = FocusNode();
  bool _isFocusPhone = false;

  String? gender;

  late final TextEditingController _dateController;
  late final FocusNode _dateFocusNode;
  bool _isDateFocus = false;

  File? selectedFile;

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    final user = context.read<UserViewModel>();
    _nameController = TextEditingController(text: user.user.fullName);
    _focusNodeName.addListener(() {
      setState(() {
        _isFocusName = _focusNodeName.hasFocus;
      });
    });

    _emailController = TextEditingController(text: user.user.email);
    _focusNodeEmail.addListener(() {
      setState(() {
        _isFocusEmail = _focusNodeEmail.hasFocus;
      });
    });

    _phoneController = TextEditingController(text: user.user.phone);
    _focusNodePhone.addListener(() {
      setState(() {
        _isFocusPhone = _focusNodePhone.hasFocus;
      });
    });

    gender = user.user.gender;

    _dateController = TextEditingController(
        text: user.user.dateOfBirth != null
            ? _converDate(user.user.dateOfBirth!.substring(0, 9))
            : "");
    _dateFocusNode = FocusNode();
    _dateFocusNode.addListener(() {
      setState(() {
        _isDateFocus = _dateFocusNode.hasFocus;
      });
    });
  }

  String _converDate(String date, {bool reverse = false}) {
    if (date == "") {
      return "";
    }
    String outputDate;
    if (reverse) {
      List<String> parts = date.split('/');
      outputDate = "${parts[2]}-${parts[1]}-${parts[0]}";
    } else {
      List<String> parts = date.split('-');
      outputDate = "${parts[2]}/${parts[1]}/${parts[0]}";
    }
    return outputDate;
  }

  _submit() async {
    setState(() {
      _isLoading = true;
    });
    if (_formKey.currentState!.validate()) {
      final data = UpdateProfileRequest(
          fullName: _nameController.text,
          email: _emailController.text,
          phone: _phoneController.text,
          gender: gender == "male" ? 0 : 1,
          dateOfBirth: _converDate(_dateController.text, reverse: true));
      print("haha ${data.map()}");

      final response = await UserApi.updateUserProfile(
          data, context.read<UserViewModel>().user.accessToken);
      if (response["statusCode"] == 200) {
        Navigator.pop(context);
        print("haha $response");
      } else {
        print("haha $response");
      }
    }
    setState(() {
      _isLoading = false;
    });
  }

  updateAvatar() async {
    final File? imgXFile = await pickSingleImage(source: ImageSource.gallery);
    if (imgXFile != null) {
      // setState(() {
      //   selectedFile = imgXFile;
      // });
      // context.read<UserViewModel>().updateAvatar(imgXFile.path);
      // File selectIMG = File(imgXFile.path);
      final response = await UserApi.updateUserAvatar(
          imgXFile, context.read<UserViewModel>().user.accessToken);
    }
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      updateAvatar();
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber,
                              image: selectedFile != null
                                  ? DecorationImage(
                                      image:
                                          FileImage(File(selectedFile!.path)),
                                      fit: BoxFit.fill)
                                  : null),
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
                              child: const Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 20,
                              ),
                            ))
                      ],
                    ),
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
                const SizedBox(height: 10),
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
                const SizedBox(height: 10),
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
                const SizedBox(height: 10),
                const Text(
                  "Giới tính",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                SelectOption(
                  focusNode: FocusNode(),
                  selectedOption: gender,
                  placeholder: "Select your gender",
                  updateSelecedOption: (String value) {
                    setState(() {
                      gender = value;
                    });
                  },
                  options: ["male", "female"],
                ),
                const SizedBox(height: 10),
                const Text(
                  "Ngày sinh",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                DateField(
                  controller: _dateController,
                  focusNode: _dateFocusNode,
                  isfocus: _isDateFocus,
                  validator: "not empty",
                  // contentPadding:
                  //     EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    _submit();
                  },
                  child: Container(
                    margin:
                        const EdgeInsets.only(right: 30, left: 30, bottom: 30),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).primaryColor),
                    child: const Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
