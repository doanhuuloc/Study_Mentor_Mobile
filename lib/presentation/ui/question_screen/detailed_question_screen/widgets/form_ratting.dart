import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:study_mentor_mobile/presentation/gen/locale/app_localizations.dart';
import 'package:study_mentor_mobile/presentation/shared/theme/src/app_style.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/textfields/common_textfield.dart';

import '../../../../gen/assets.gen.dart';

class FormRatting extends StatefulWidget {
  const FormRatting({super.key, required this.rate, required this.name});

  final Future<bool> Function(String, int) rate;
  final String name;

  @override
  State<FormRatting> createState() => _FormRattingState();
}

class _FormRattingState extends State<FormRatting> {
  final TextEditingController textEditingController = TextEditingController();
  double rate = 5;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Wrap(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  S.of(context).reivew,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Image.asset(
                  Assets.images.icons.chatgpt.path,
                  height: 80,
                  width: 80,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 10),
                Text(
                  widget.name,
                  style: const TextStyle(fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                        allowHalfRating: false,
                        itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                        initialRating: rate,
                        onRatingUpdate: (value) {
                          setState(() {
                            rate = value;
                          });
                        }),
                  ],
                ),
                CommonTextField(
                  textEditingController: textEditingController,
                  minLines: 4,
                  maxLines: 4,
                  textInputAction: TextInputAction.newline,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () async {
                    final res = await widget.rate(
                        textEditingController.text, rate.toInt());
                    if (res) {
                      context.pop(true);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(S.of(context).send,
                        style: Styles.s18()
                            .withWeight(FontWeight.w600)
                            .withColor(Colors.white)),
                  ),
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
