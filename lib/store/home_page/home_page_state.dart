import 'dart:collection';

import 'package:flutter/painting.dart';

import 'package:webAppTest/helpers/color_random_generator.dart';
import 'package:webAppTest/resources/const/color_const.dart';

import 'package:webAppTest/store/app/reducer.dart';
import 'package:webAppTest/store/home_page/home_page_actions.dart';

class HomePageState {
  final Color currentColor;

  HomePageState({this.currentColor});

  factory HomePageState.initial() {
    return HomePageState(
      currentColor: WHITE,
    );
  }

  HomePageState copyWith({Color newColor}) {
    return HomePageState(currentColor: newColor ?? this.currentColor);
  }

  HomePageState reducer(dynamic action) {
    return Reducer<HomePageState>(
      actions: HashMap.from({
        ChangeColorAction: (dynamic action) => _getRandomColor(),
      }),
    ).updateState(action, this);
  }

  HomePageState _getRandomColor() {
    return copyWith(newColor: colorRandomGenerator());
  }
}
