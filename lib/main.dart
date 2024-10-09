import 'package:ajuda/ajuda_app.dart';
import 'package:ajuda/core/database/cache/cashe_helper.dart';
import 'package:ajuda/core/services/get_it.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await getIt<CacheHelper>().init();
  runApp(const AjudaApp());
}
