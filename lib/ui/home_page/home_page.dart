import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';

import 'package:webAppTest/resources/const/text_const.dart';
import 'package:webAppTest/resources/font/fonts.dart';

import 'package:webAppTest/store/app/app_state.dart';

import 'package:webAppTest/ui/home_page/home_page_view_model.dart';
import 'package:webAppTest/ui/layouts/main_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageViewModel>(
      converter: HomePageViewModel.fromStore,
      builder: (BuildContext context, HomePageViewModel viewModel) {
        return GestureDetector(
          onTap: viewModel.changeColor,
          child: MainLayout(
            bgColor: viewModel.currentColor,
            child: Center(
              child: Text(
                CENTER_TEXT,
                style: Fonts.homePageTextStyle(),
              ),
            ),
          ),
        );
      },
    );
  }
}
