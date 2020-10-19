import 'application/application.dart';

import 'package:flutter/material.dart';

import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'package:webAppTest/store/app/app_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Store store = Store<AppState>(
    AppState.getAppReducer,
    initialState: AppState.initial(),
    middleware: [
      EpicMiddleware(AppState.getAppEpic),
    ],
  );
  runApp(Application(store: store));
}
