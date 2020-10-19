import 'package:redux_epics/redux_epics.dart';

import 'package:webAppTest/store/home_page/home_page_state.dart';

class AppState {
  final HomePageState homePageState;

  AppState({
    this.homePageState,
  });

  factory AppState.initial() {
    return AppState(
      homePageState: HomePageState.initial(),
    );
  }

  static AppState getAppReducer(AppState state, dynamic action) {
    const String TAG = '[appReducer]';

    print('$TAG => <appReducer> => action: ${action.runtimeType}');
    return AppState(
      homePageState: state.homePageState.reducer(action),
    );
  }

  static final getAppEpic = combineEpics<AppState>([]);
}
