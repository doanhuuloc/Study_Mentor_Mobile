import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:open_file/open_file.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';

import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/fileBox.dart';
import '../blocs/create_question_cubit.dart';
import '../blocs/create_question_state.dart';

class SelectFile extends StatelessWidget {
  const SelectFile({super.key});

  @override
  Widget build(BuildContext context) {
    return GapItems(
      gap: 10,
      items: [
        Text(
          S.of(context).fileQuestion,
          style: Styles.s16().withWeight(FontWeight.w600),
        ),
        BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
          buildWhen: (previous, current) =>
              previous.listFilePicker != current.listFilePicker,
          builder: (context, state) {
            return Column(
                children: context
                    .read<CreateQuestionCubit>()
                    .state
                    .listFilePicker
                    .map(
                      (e) => InkWell(
                        onTap: () => OpenFile.open(e.files.single.path),
                        child: FileBox(
                            name: e.files.single.name,
                            icon: IconButton(
                              icon: const Icon(Icons.cancel_outlined),
                              onPressed: () => context
                                  .read<CreateQuestionCubit>()
                                  .removeFilePicker(e),
                            )),
                      ),
                    )
                    .toList());
          },
        ),
        InkWell(
          onTap: () async {
            await context.read<CreateQuestionCubit>().pickFile();
          },
          child: DottedBorder(
              color: Theme.of(context).primaryColor,
              borderType: BorderType.RRect,
              padding: const EdgeInsets.all(12),
              radius: const Radius.circular(6),
              dashPattern: const [6],
              strokeWidth: 2,
              child: Center(
                child: SvgPicture.asset(
                  "assets/svgs/upload_file.svg",
                  height: 50,
                  width: 50,
                ),
              )),
        ),
      ],
    );
  }
}
