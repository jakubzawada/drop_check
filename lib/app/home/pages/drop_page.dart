import 'package:drop_check/app/home/pages/cubit/drop_cubit.dart';
import 'package:drop_check/app/incjection_container.dart';
import 'package:drop_check/widgets/header_text.dart';
import 'package:drop_check/widgets/drop_toggle_button.dart';
import 'package:drop_check/widgets/shoe_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DropPage extends StatelessWidget {
  const DropPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DropCubit>(
      create: (context) => getIt(),
      child: BlocBuilder<DropCubit, DropState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.grey[300],
            body: Column(
              children: [
                HeaderText(
                  text: AppLocalizations.of(context).drops,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropToggleButton(
                      text: AppLocalizations.of(context).upcoming,
                      isSelected: !state.showAccessible,
                      onTap: () {
                        context.read<DropCubit>().showAccessibleFalse();
                      },
                    ),
                    const SizedBox(width: 20),
                    DropToggleButton(
                      text: AppLocalizations.of(context).available,
                      isSelected: state.showAccessible,
                      onTap: () {
                        context.read<DropCubit>().showAccessibleTrue();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ShoeList(showAccessible: state.showAccessible),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
