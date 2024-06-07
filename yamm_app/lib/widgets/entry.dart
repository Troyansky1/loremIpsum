import 'package:flutter/material.dart';

class DataEntry extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String exampleText;
  final double width;
  const DataEntry(
      {super.key,
      required this.controller,
      required this.label,
      required this.exampleText,
      required this.width});

  @override
  State<DataEntry> createState() => _DataEntryState();
}

class _DataEntryState extends State<DataEntry> {
  num? toNum(String? s) {
    if (s == null || s.isEmpty) {
      return null;
    }
    return double.tryParse(s);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 15,
      width: widget.width,
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10),
          child: TextField(
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              hintText: widget.exampleText,
              hintTextDirection: TextDirection.rtl,
              filled: true,
              fillColor:
                  const Color(0xFFEDE3D5), // Background color of the text field
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
            controller: widget.controller,
          )),
    );
  }
}
