import 'dart:async';

import 'package:device_preview/device_preview.dart' as device_preview;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sizer/sizer.dart';

import 'src/core/di/injection.dart';
import 'src/core/init/observer/app_bloc_observer.dart';
import 'src/core/init/routes/app_router.dart';
import 'src/core/init/theme/app_theme.dart';
import 'src/shared/data/models/character/character_model.dart';
import 'src/shared/data/models/spells/spells_model.dart';
import 'src/shared/data/models/wand/wand_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection();
  Bloc.observer = AppBlocObserver.instance;

  await Hive.initFlutter();

  Hive.registerAdapter(CharacterModelAdapter());
  Hive.registerAdapter(WandModelAdapter());
  Hive.registerAdapter(SpellsModelAdapter());

  runZoned(
    () => runApp(
      device_preview.DevicePreview(
          enabled: kDebugMode, builder: (BuildContext context) => const MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'HPotter Guide',
        theme: AppTheme.instance.theme,
        routerConfig: AppRouter.instance.router,
      );
    });
  }
}
