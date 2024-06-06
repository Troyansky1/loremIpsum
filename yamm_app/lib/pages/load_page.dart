import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yamm_app/pages/home_page.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({super.key, required this.title});
  final String title;

  @override
  State<LoadPage> createState() => _MyLoadPageState();
}

class _MyLoadPageState extends State<LoadPage> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? Container() : HomePage(title: "Home page");
  }
}
