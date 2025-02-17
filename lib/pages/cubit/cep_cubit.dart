import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:public_services_app/pages/cubit/cep_cubit_state.dart';

class CepCubit extends Cubit<CepCubitState> {
  CepCubit() : super(const CepCubitState());

  void addCep(var cep){
    int inputUser;
    inputUser = cep;
  }

  showCep(){
    return 'teste';
  }
}
