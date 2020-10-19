import 'package:flutter/painting.dart';

import 'package:redux/redux.dart';

import 'package:webAppTest/store/app/app_state.dart';
import 'package:webAppTest/store/home_page/home_page_selectors.dart';

class HomePageViewModel {
  final Color currentColor;
  final void Function() changeColor;

  HomePageViewModel({
    this.currentColor,
    this.changeColor,
  });

  static HomePageViewModel fromStore(Store<AppState> store) {
    return HomePageViewModel(
      currentColor: HomePageSelector.getCurrentColor(store),
      changeColor: HomePageSelector.changeColor(store),
    );
  }
}
