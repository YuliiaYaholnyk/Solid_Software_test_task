import 'package:flutter/painting.dart';

import 'package:redux/redux.dart';

import 'package:webAppTest/store/app/app_state.dart';
import 'package:webAppTest/store/home_page/home_page_actions.dart';

class HomePageSelector {
  static void Function() changeColor(Store<AppState> store) {
    return () => store.dispatch(ChangeColorAction());
  }

  static Color getCurrentColor(Store<AppState> store) {
    return store.state.homePageState.currentColor;
  }
}
