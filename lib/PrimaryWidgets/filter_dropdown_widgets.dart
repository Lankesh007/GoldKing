import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterDropdownWidget extends StatefulWidget {
  final List<String> options;
  final ValueChanged<String?>? onChanged;

  FilterDropdownWidget({
    required this.options,
    this.onChanged,
  });

  @override
  _FilterDropdownWidgetState createState() => _FilterDropdownWidgetState();
}

class _FilterDropdownWidgetState extends State<FilterDropdownWidget> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context, designSize: Size(width, height));
    return Container(
      height: height * 0.05,
      width: width / 2.2,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: DropdownButton<String>(
          value: _selectedOption,
          hint: Text('Please select option'),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black),
          underline: SizedBox(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedOption = newValue;
            });
            if (widget.onChanged != null) {
              widget.onChanged!(newValue);
            }
          },
          items: widget.options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
