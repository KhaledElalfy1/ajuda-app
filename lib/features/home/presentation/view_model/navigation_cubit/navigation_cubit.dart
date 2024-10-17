import 'package:ajuda/features/home/presentation/view_model/navigation_cubit/navigation_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());
  static NavigationCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  final List<Widget> screens = const [
    Scaffold(
      body: Center(
        child: Text('Home'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Favorite'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Profile'),
      ),
    ),
    Scaffold(
      body: Center(
        child: Text('Settings'),
      ),
    ),
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(NavigationDone());
  }
}
