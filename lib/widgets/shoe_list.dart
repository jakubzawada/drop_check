import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/app/home/pages/cubit/drop_cubit.dart';
import 'package:drop_check/data/remote_data_sources/drop_remote_data_source.dart';
import 'package:drop_check/repositories/drop_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:drop_check/widgets/tile/accessible_shoe_drop_tile.dart';
import 'package:drop_check/widgets/tile/shoe_drop_tile.dart';

class ShoeList extends StatelessWidget {
  final bool showAccessible;

  const ShoeList({super.key, required this.showAccessible});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DropCubit(DropRepository(DropRemoteDataSource()))
        ..fetchShoe()
        ..fetchAccessibleShoe(),
      child: Expanded(
        child: showAccessible
            ? BlocBuilder<DropCubit, DropState>(
                builder: (context, state) {
                  if (state.status == Status.loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == Status.succes) {
                    return Column(
                      children: state.accessibleShoe.map((accessibleShoe) {
                        return AccessibleShoeDropTile(
                          accessibleShoe: accessibleShoe,
                        );
                      }).toList(),
                    );
                  } else if (state.status == Status.error) {
                    return Center(child: Text(state.errorMessage));
                  } else {
                    return const Center(child: Text('No data'));
                  }
                },
              )
            : BlocBuilder<DropCubit, DropState>(
                builder: (context, state) {
                  if (state.status == Status.loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == Status.succes) {
                    return Column(
                      children: state.shoe.map((shoe) {
                        return ShoeDropTile(
                          shoe: shoe,
                        );
                      }).toList(),
                    );
                  } else if (state.status == Status.error) {
                    return Center(child: Text(state.errorMessage));
                  } else {
                    return const Center(child: Text('No data'));
                  }
                },
              ),
      ),
    );
  }
}
