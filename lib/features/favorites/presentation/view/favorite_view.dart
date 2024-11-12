import 'package:ajuda/core/utils/app_fonts.dart';
import 'package:ajuda/core/widgets/custom_decorated_body.dart';
import 'package:ajuda/features/favorites/presentation/view/widgets/favorite_view_body.dart';
import 'package:ajuda/generated/l10n.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomDecoratedBody(
        headerChild: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            S.of(context).donations,
            textAlign: TextAlign.center,
            style: AppFonts.semiBold20,
          ),
        ),
        bodyChild:const FavoriteViewBody(),
      ),
    );
  }
}

