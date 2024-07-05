import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/gap_items.dart';

import '../../../../../application/services/education/education.dart';
import '../../../../gen/locale/app_localizations.dart';
import '../../../../shared/theme/theme.dart';
import '../../../../shared/widgets/drop_down_bar/drop_down_bar.dart';
import '../blocs/create_question_cubit.dart';
import '../blocs/create_question_state.dart';

class SelectEducationStructure extends StatelessWidget {
  const SelectEducationStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return GapItems(
      gap: 10,
      items: [
        BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
          buildWhen: (previous, current) =>
              previous.level != current.level ||
              previous.structure != current.structure,
          builder: (context, state) {
            return GapItems(
              gap: 10,
              crossAxisAlignmentRow: CrossAxisAlignment.start,
              items: [
                Text(
                  S.of(context).questionLevel,
                  style: Styles.s18().withWeight(FontWeight.w600),
                ),
                DropDownBar(
                  enabled: true,
                  data: context
                          .read<CreateQuestionCubit>()
                          .state
                          .structure
                          ?.map((level) => DropDownBarData<LevelResponse>(
                              value: level, title: level.levelName ?? ""))
                          .toList() ??
                      [],
                  value: context.read<CreateQuestionCubit>().state.level,
                  onChanged: (value) => context
                      .read<CreateQuestionCubit>()
                      .onChangeLevel(value as LevelResponse),
                ),
              ],
            );
          },
        ),
        BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
          buildWhen: (previous, current) =>
              previous.level != current.level ||
              previous.grade != current.grade,
          builder: (context, state) {
            return GapItems(
              gap: 10,
              crossAxisAlignmentRow: CrossAxisAlignment.start,
              items: [
                Text(
                  S.of(context).grade,
                  style: Styles.s18().withWeight(FontWeight.w600),
                ),
                DropDownBar(
                  enabled:
                      context.read<CreateQuestionCubit>().state.level != null,
                  data: context
                          .read<CreateQuestionCubit>()
                          .state
                          .level
                          ?.grades
                          ?.map((grade) => DropDownBarData<GradeResponse>(
                              value: grade, title: grade.gradeName ?? ""))
                          .toList() ??
                      [],
                  value: context.read<CreateQuestionCubit>().state.grade,
                  onChanged: (value) => context
                      .read<CreateQuestionCubit>()
                      .onChangeGrade(value as GradeResponse),
                ),
              ],
            );
          },
        ),
        BlocBuilder<CreateQuestionCubit, CreateQuestionState>(
          buildWhen: (previous, current) =>
              previous.level != current.level ||
              previous.grade != current.grade ||
              previous.subject != current.subject,
          builder: (context, state) {
            return GapItems(
              gap: 10,
              crossAxisAlignmentRow: CrossAxisAlignment.start,
              items: [
                Text(
                  S.of(context).subject,
                  style: Styles.s18().withWeight(FontWeight.w600),
                ),
                DropDownBar(
                  enabled:
                      context.read<CreateQuestionCubit>().state.grade != null,
                  data: context
                          .read<CreateQuestionCubit>()
                          .state
                          .grade
                          ?.subjects
                          ?.map((subject) => DropDownBarData<SubjectResponse>(
                              value: subject, title: subject.name ?? ""))
                          .toList() ??
                      [],
                  value: context.read<CreateQuestionCubit>().state.subject,
                  onChanged: (value) => context
                      .read<CreateQuestionCubit>()
                      .onChangeSubject(value as SubjectResponse),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
