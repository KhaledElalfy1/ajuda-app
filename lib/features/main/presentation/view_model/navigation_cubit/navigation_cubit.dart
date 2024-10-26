import 'package:ajuda/features/account/presentation/view/account_view.dart';
import 'package:ajuda/features/favorites/presentation/view/favorite_view.dart';
import 'package:ajuda/features/home/presentation/view/home_view.dart';
import 'package:ajuda/features/main/presentation/view_model/navigation_cubit/navigation_state.dart';
import 'package:ajuda/features/notification/presentation/view/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());
  static NavigationCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  final List<Widget> screens = const [
    HomeView(),
    FavoriteView(),
    NotificationView(),
    AccountView(),
  ];
  void changeIndex(int index) {
    currentIndex = index;
    emit(NavigationDone());
  }
}
