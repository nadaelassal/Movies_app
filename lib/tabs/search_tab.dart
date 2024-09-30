// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movies/constants/app_theme.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search_outlined),
            prefixIconColor: AppTheme.white,
            labelText: "Search",
            labelStyle: TextStyle(color: AppTheme.white),
            fillColor: AppTheme.darkGrey,
            filled: true,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: AppTheme.grey),
            ),
          ),
        ));
  }
}
