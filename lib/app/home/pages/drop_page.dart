import 'package:drop_check/app/home/pages/cubit/drop_cubit.dart';
import 'package:drop_check/data/remote_data_sources/drop_remote_data_source.dart';
import 'package:drop_check/repositories/drop_repository.dart';
import 'package:drop_check/widgets/header_text.dart';
import 'package:drop_check/widgets/drop_toggle_button.dart';
import 'package:drop_check/widgets/shoe_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropPage extends StatelessWidget {
  const DropPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropCubit(DropRepository(DropRemoteDataSource())),
      child: BlocBuilder<DropCubit, DropState>(
        builder: (context, state) {
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
                      isSelected: !state.showAccessible,
                      onTap: () {
                        context.read<DropCubit>().showAccessibleFalse();
                      },
                    ),
                    const SizedBox(width: 20),
                    DropToggleButton(
                      text: 'Dostępne',
                      isSelected: state.showAccessible,
                      onTap: () {
                        context.read<DropCubit>().showAccessibleTrue();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ShoeList(showAccessible: state.showAccessible),
              ],
            ),
          );
        },
      ),
    );
  }
}
