import 'package:flutter/material.dart';

class DataLabel extends StatefulWidget {
  final String label;
  const DataLabel({super.key, required this.label});

  @override
  State<DataLabel> createState() => _DataLabelState();
}

class _DataLabelState extends State<DataLabel> {
  num? toNum(String? s) {
    if (s == null || s.isEmpty) {
      return null;
    }
    return double.tryParse(s);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 25,
        width: MediaQuery.of(context).size.width / 3,
        child: Text(
          widget.label,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          style: TextStyle(),
        ));
  }
}
