import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get.dart';

import 'package:portafolio_flutter/domain/locator.dart';
import 'package:portafolio_flutter/presentation/pages/home_page_widget.dart'; // Asegúrate de que esto esté importado

void main() async {
  // Asegúrate de inicializar GetIt antes de runApp
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDI(); // Inicializar dependencias

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portafolio',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: NewHomeWidget(),
      );
    });
  }
}
