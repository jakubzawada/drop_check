import 'package:drop_check/app/core/enums.dart';
import 'package:drop_check/app/home/pages/cubit/news_cubit.dart';
import 'package:drop_check/widgets/tile/best_sale_tile.dart';
import 'package:drop_check/widgets/tile/newsfeed_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()
        ..fetchBestSale()
        ..fetchNewsFeed(),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Okazje',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 180,
                child: BlocBuilder<NewsCubit, NewsState>(
                  builder: (context, state) {
                    if (state.status == Status.loading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state.status == Status.succes) {
                      return ListView.builder(
                        itemCount: state.bestSale.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final bestSale = state.bestSale[index];
                          return BestSaleTile(
                            bestSale: bestSale,
                          );
                        },
                      );
                    } else if (state.status == Status.error) {
                      return Center(child: Text(state.errorMessage));
                    } else {
                      return const Center(child: Text('No data'));
                    }
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aktualności',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              BlocBuilder<NewsCubit, NewsState>(
                builder: (context, state) {
                  if (state.status == Status.loading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.status == Status.succes) {
                    return Column(
                      children: state.newsfeed.map((newsfeed) {
                        return NewsfeedTile(
                          newsfeed: newsfeed,
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
            ],
          ),
        ),
      ),
    );
  }
}
