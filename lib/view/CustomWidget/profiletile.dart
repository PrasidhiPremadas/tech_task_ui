// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  String details;
  ProfileTile({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: details,
            contentPadding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
