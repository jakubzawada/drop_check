import 'package:drop_check/widgets/header_text.dart';
import 'package:drop_check/widgets/drop_toggle_button.dart';
import 'package:drop_check/widgets/shoe_list.dart';
import 'package:flutter/material.dart';

class DropPage extends StatefulWidget {
  const DropPage({super.key});

  @override
  State<DropPage> createState() => _DropPageState();
}

class _DropPageState extends State<DropPage> {
  bool showAccessible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          const HeaderText(
            text: 'Dropy',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropToggleButton(
                text: 'Nadchodzące',
                isSelected: !showAccessible,
                onTap: () {
                  setState(() {
                    showAccessible = false;
                  });
                },
              ),
              const SizedBox(width: 20),
              DropToggleButton(
                text: 'Dostępne',
                isSelected: showAccessible,
                onTap: () {
                  setState(() {
                    showAccessible = true;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          ShoeList(showAccessible: showAccessible),
        ],
      ),
    );
  }
}
