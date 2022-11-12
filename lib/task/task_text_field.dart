import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTextField extends StatelessWidget {

  final TextEditingController controller;
  final VoidCallback onDoneClick;

  const TaskTextField(this.controller, this.onDoneClick, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        showCursor: true,
        maxLines: 1,
        decoration: InputDecoration(
          isDense: true,
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          hintText: "I want to...",
          filled: true,
          fillColor: Colors.grey.withOpacity(0.3),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              style: BorderStyle.none,
              width: 0,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: onDoneClick,
            icon: const Icon(
              Icons.check,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}