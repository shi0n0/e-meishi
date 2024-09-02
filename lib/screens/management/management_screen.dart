import 'package:flutter/material.dart';
import 'package:e_meishi/components/search_field.dart';

class ManagementScreen extends StatelessWidget {
  const ManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SearchField(),
      ),
    );
  }
}
