import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/app/home/pages/cubit/sale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:drop_check/widgets/tile/man_sale_tile.dart';
import 'package:drop_check/widgets/tile/woman_sale_tile.dart';
import 'package:drop_check/widgets/tile/other_sale_tile.dart';

class SaleList extends StatelessWidget {
  final SaleCategory selectedCategory;

  const SaleList({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    switch (selectedCategory) {
      case SaleCategory.men:
        return BlocProvider(
          create: (context) => SaleCubit()
            ..fetchManSale()
            ..fetchWomanSale()
            ..fetchOtherSale(),
          child: BlocBuilder<SaleCubit, SaleState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.status == Status.succes) {
                return ListView.builder(
                  itemCount: state.manSale.length,
                  itemBuilder: (context, index) {
                    return ManSaleTile(manSale: state.manSale[index]);
                  },
                );
              } else if (state.status == Status.error) {
                return Center(child: Text(state.errorMessage));
              } else {
                return const Center(child: Text('No data'));
              }
            },
          ),
        );
      case SaleCategory.women:
        return BlocProvider(
          create: (context) => SaleCubit()..fetchWomanSale(),
          child: BlocBuilder<SaleCubit, SaleState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.status == Status.succes) {
                return ListView.builder(
                  itemCount: state.womanSale.length,
                  itemBuilder: (context, index) {
                    return WomanSaleTile(womanSale: state.womanSale[index]);
                  },
                );
              } else if (state.status == Status.error) {
                return Center(child: Text(state.errorMessage));
              } else {
                return const Center(child: Text('No data'));
              }
            },
          ),
        );
      case SaleCategory.other:
        return BlocProvider(
          create: (context) => SaleCubit()..fetchOtherSale(),
          child: BlocBuilder<SaleCubit, SaleState>(
            builder: (context, state) {
              if (state.status == Status.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state.status == Status.succes) {
                return ListView.builder(
                  itemCount: state.otherSale.length,
                  itemBuilder: (context, index) {
                    return OtherSaleTile(otherSale: state.otherSale[index]);
                  },
                );
              } else if (state.status == Status.error) {
                return Center(child: Text(state.errorMessage));
              } else {
                return const Center(child: Text('No data'));
              }
            },
          ),
        );
      default:
        return Container();
    }
  }
}
