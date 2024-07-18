import 'package:drop_check/app/home/pages/cubit/sale_cubit.dart';
import 'package:drop_check/data/remote_data_sources/sale_remote_data_source.dart';
import 'package:drop_check/repositories/sale_repository.dart';
import 'package:drop_check/widgets/sale_toogle_button.dart';
import 'package:flutter/material.dart';
import 'package:drop_check/widgets/sale_list.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SaleCubit(
          saleRepository: SaleRepository(dataSource: SaleRemoteDataSource())),
      child: BlocBuilder<SaleCubit, SaleState>(
        builder: (context, state) {
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
                      isSelected: state.selectedCategory == SaleCategory.men,
                      onTap: () {
                        context.read<SaleCubit>().selectedCategoryMan();
                      },
                    ),
                    const SizedBox(width: 20),
                    SaleToggleButton(
                      text: 'Kobieta',
                      isSelected: state.selectedCategory == SaleCategory.women,
                      onTap: () {
                        context.read<SaleCubit>().selectedCategoryWoman();
                      },
                    ),
                    const SizedBox(width: 20),
                    SaleToggleButton(
                      text: 'Inne',
                      isSelected: state.selectedCategory == SaleCategory.other,
                      onTap: () {
                        context.read<SaleCubit>().selectedCategoryOther();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SaleList(selectedCategory: state.selectedCategory),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
