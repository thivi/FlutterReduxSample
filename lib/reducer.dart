import 'package:sample/actions.dart';
import 'package:sample/model.dart';
import 'package:sample/state.dart';

AppState appStateReducer (AppState state, dynamic action){
    if(action is IncrementAction){
      return new AppState(new Counter(action.count));
    }
    return state;
}
