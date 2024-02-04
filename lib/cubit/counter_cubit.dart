import 'package:basketball_counter_app/cubit/counter_states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit() : super(CounterInitialState());
  static CounterCubit get(context) => BlocProvider.of(context);
  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementTeamAPoints(int buttonNumber){
    teamAPoints +=buttonNumber;
    emit(CounterAIncrementState());
  }
  void incrementTeamBPoints(int buttonNumber){
    teamBPoints +=buttonNumber;
    emit(CounterBIncrementState());
  }
  void reset(){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CountereRest());
  }
}