import 'package:ajuda/core/widgets/custom_decorated_body.dart';
import 'package:ajuda/features/home/presentation/view/widgets/home_body.dart';
import 'package:ajuda/features/home/presentation/view/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomDecoratedBody(
        headerChild: HomeHeader(),
        bodyChild: HomeBody(),
      ),
    );
  }
}
