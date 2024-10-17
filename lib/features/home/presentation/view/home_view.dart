import 'package:ajuda/features/home/presentation/view/widgets/navigation_bar_builder.dart';
import 'package:ajuda/features/home/presentation/view_model/navigation_cubit/navigation_cubit.dart';
import 'package:ajuda/features/home/presentation/view_model/navigation_cubit/navigation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return IndexedStack(
            index: NavigationCubit.get(context).currentIndex,
            children: NavigationCubit.get(context).screens,
          );
        },
      ),
      bottomNavigationBar:const NavigationBarBuilder(),
    );
  }
}

