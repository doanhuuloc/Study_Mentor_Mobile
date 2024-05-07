import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:study_mentor_mobile/screen/chat/widgets/chatItem.dart';
import 'package:study_mentor_mobile/shared/widget/customTextField.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _messageController = TextEditingController();
  final FocusNode _focusNodeMessage = FocusNode();
  bool _isFocusMessage = false;

  List<dynamic> chats = [
    {
      "content": "11111a111111",
      "time": DateTime.now(),
      "isOpposite": true,
    },
    {
      "content": "22a2222222",
      "time": DateTime.now(),
      "isOpposite": false,
    },
    {
      "content": "33333a33333",
      "time": DateTime.now(),
      "isOpposite": true,
    },
    {
      "content": "4444a444444",
      "time": DateTime.now(),
      "isOpposite": true,
    },
    {
      "content": "555555a5555555",
      "time": DateTime.now(),
      "isOpposite": false,
    },
  ];

  @override
  void initState() {
    super.initState();
    _focusNodeMessage.addListener(() {
      setState(() {
        _isFocusMessage = _focusNodeMessage.hasFocus;
      });
    });
  }

  sendMessage() {
    final message = _messageController.text;
    if (message != "") {
      if (mounted) {
        setState(() {
          final data = {
            "content": message.toString(),
            "time": DateTime.now(),
            "isOpposite": true,
          };
          print(data);
          chats.insert(0,data);
        });
        _messageController.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Study Mentor AI"),
        backgroundColor: Colors.white,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(10),
            reverse: true,
            children: chats.map((e) {
              return ChatItem(
                  content: e["content"],
                  dateTime: e["time"],
                  isOpposite: e["isOpposite"]);
            }).toList(),
          )),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: SvgPicture.asset("assets/svgs/upload.svg"),
                ),
                Expanded(
                  child: CustomTextField(
                    controller: _messageController,
                    focusNode: _focusNodeMessage,
                    isfocus: _isFocusMessage,
                    rightIcon: Icons.send,
                    textInputType: TextInputType.text,
                    hintText: "Nhập nội dung tin nhắn",
                    hintStyle: TextStyle(color: Colors.black),
                    iconColor: Theme.of(context).primaryColor,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.grey)),
                    validator: (value) {
                      return null;
                    },
                    suffixIcononTap: sendMessage,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
