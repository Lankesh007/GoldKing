import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'filter_dropdown_widgets.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(FeatherIcons.filter)),
              Text(
                "Filter",
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
          FilterDropdownWidget(
            options: ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
            onChanged: (value) {
              print('Selected: $value');
            },
          ),
        ],
      ),
    );
  }
}
