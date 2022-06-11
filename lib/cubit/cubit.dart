import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/state.dart';

class TestCubit extends Cubit<AppState>{
  TestCubit() : super(InitialState());
  static TestCubit get(context)=> BlocProvider.of(context);






}