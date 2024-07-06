import 'package:drop_check/widgets/sale_toogle_button.dart';
import 'package:flutter/material.dart';
import 'package:drop_check/widgets/sale_list.dart';
import 'package:drop_check/app/core/enums.dart';

class SalePage extends StatefulWidget {
  const SalePage({super.key});

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  SaleCategory selectedCategory = SaleCategory.men;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promocje',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SaleToggleButton(
                text: 'Mężczyzna',
                isSelected: selectedCategory == SaleCategory.men,
                onTap: () {
                  setState(() {
                    selectedCategory = SaleCategory.men;
                  });
                },
              ),
              const SizedBox(width: 20),
              SaleToggleButton(
                text: 'Kobieta',
                isSelected: selectedCategory == SaleCategory.women,
                onTap: () {
                  setState(() {
                    selectedCategory = SaleCategory.women;
                  });
                },
              ),
              const SizedBox(width: 20),
              SaleToggleButton(
                text: 'Inne',
                isSelected: selectedCategory == SaleCategory.other,
                onTap: () {
                  setState(() {
                    selectedCategory = SaleCategory.other;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SaleList(selectedCategory: selectedCategory),
          ),
        ],
      ),
    );
  }
}
