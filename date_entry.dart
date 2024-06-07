import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';

class DateEntry extends StatefulWidget {
  final TextEditingController controller;

  const DateEntry({super.key, required this.controller});

  @override
  State<DateEntry> createState() => _DateEntryState();
}

class _DateEntryState extends State<DateEntry> {
  dateTimePickerWidget(BuildContext context, controller) {
    return DatePicker.showDatePicker(
      context,
      dateFormat: 'dd MMM yyyy HH:mm',
      minDateTime: DateTime(2000),
      maxDateTime: DateTime(2050),
      minuteDivider: 10,
      onConfirm: (
        dateTime,
        List<int> index,
      ) {
        DateTime selectdate = dateTime;
        controllers.dateCont.text =
            DateFormat('dd MMM yyyy HH:mm').format(selectdate);
        controllers.notify();
        controllers.dateVal =
            DateFormat('yyyy-MM-dd HH:mm:ss').format(selectdate);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () async {
          dateTimePickerWidget(context, widget.controllers);
        },
        icon: const Icon(Icons.edit));
  }
}
