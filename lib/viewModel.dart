import 'package:redux/redux.dart';
import 'package:sample/actions.dart';
import 'package:sample/state.dart';

class ViewModel{
  int count;
  final Function () onIncrement;
  ViewModel(this.count,this.onIncrement);

  factory ViewModel.create(Store<AppState> store){
    _onIncrement(){
      print("Incrementing");
      print(store.state.counter.counter.toString());
      store.dispatch(new IncrementAction(store.state.counter.counter+1));
    }
  
    return ViewModel(store.state.counter.counter,_onIncrement);
  }
}