import 'package:drop_check/app/home/pages/cubit/sale_cubit.dart';
import 'package:drop_check/data/remote_data_sources/sale_remote_data_source.dart';
import 'package:drop_check/repositories/sale_repository.dart';
import 'package:drop_check/widgets/sale_toogle_button.dart';
import 'package:flutter/material.dart';
import 'package:drop_check/widgets/sale_list.dart';
import 'package:drop_check/app/core/enums.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context).promotions,
                        style: const TextStyle(
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
                      text: AppLocalizations.of(context).male,
                      isSelected: state.selectedCategory == SaleCategory.men,
                      onTap: () {
                        context.read<SaleCubit>().selectedCategoryMan();
                      },
                    ),
                    const SizedBox(width: 20),
                    SaleToggleButton(
                      text: AppLocalizations.of(context).woman,
                      isSelected: state.selectedCategory == SaleCategory.women,
                      onTap: () {
                        context.read<SaleCubit>().selectedCategoryWoman();
                      },
                    ),
                    const SizedBox(width: 20),
                    SaleToggleButton(
                      text: AppLocalizations.of(context).other,
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
