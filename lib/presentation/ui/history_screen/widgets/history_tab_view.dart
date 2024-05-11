import 'package:flutter/material.dart';
import 'package:study_mentor_mobile/presentation/shared/widgets/filters/selectable_chips.dart';

class HistoryTabView extends StatefulWidget {
  const HistoryTabView({super.key});

  @override
  State<HistoryTabView> createState() => _HistoryTabViewState();
}

enum FilterCommunityPost { ALL, FAVORITE, POPULAR, LATEST }

class _HistoryTabViewState extends State<HistoryTabView> {
  FilterCommunityPost filterCommunityPost = FilterCommunityPost.ALL;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          SelectableChips<FilterCommunityPost>(
            padding: const EdgeInsets.only(left: 8),
            selected: <FilterCommunityPost>{}..add(filterCommunityPost),
            data: const [
              ChipData(
                value: FilterCommunityPost.ALL,
                label: "Chat gpt",
              ),
              ChipData(
                value: FilterCommunityPost.FAVORITE,
                label: 'Geminy',
              ),
            ],
            onSelect: (value) {
              setState(() {
                filterCommunityPost = value;
              });
            },
          ),
          const SizedBox(height: 10),
          MessageBox(),
          MessageBox(),
          MessageBox(),
        ],
      ),
    );
  }
}

class MessageBox extends StatelessWidget {
  const MessageBox({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amber),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chat gpt",
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Everything will be alrigh 123 12 312 31 23 123 t!",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                Text(
                  "15:04",
                ),
                SizedBox(width: 2),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
