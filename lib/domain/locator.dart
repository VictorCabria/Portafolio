////import 'package:appsflyer_sdk/appsflyer_sdk.dart';

import 'package:get_it/get_it.dart';

import '../presentation/controllers/home_page_view_model.dart';
import '../presentation/controllers/image_show_view_model.dart';

final getIt = GetIt.instance;

Future<void> initializeDI() async {
  _view();
}

void _view() async {
  // VIEW
  getIt.registerFactory<NewHomeViewModel>(
    () => NewHomeViewModel(),
  );

  getIt.registerFactory<ImageShowViewModel>(
    () => ImageShowViewModel(),
  );
}
