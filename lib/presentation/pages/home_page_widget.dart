import 'package:flutter/material.dart';
import 'package:portafolio_flutter/presentation/pages/root_widget.dart';

import '../../domain/locator.dart';
import '../controllers/home_page_view_model.dart';

class NewHomeWidget extends LocalRootWidget<NewHomeViewModel> {
  NewHomeWidget({super.key}) : super(getIt());

  @override
  Widget widget(NewHomeViewModel model, BuildContext context) {
    return withLoading(body: Container(), model: model, context: context);
  }
}
