import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:public_services_app/data/dio/repository_dio.dart';
import 'package:public_services_app/pages/cubit/cep_cubit_state.dart';

import '../../domain/entities/address.dart';

class CepCubit extends Cubit<CepCubitState> {
  CepCubit() : super(const CepCubitState());

  Future<void> addCep(String cep) async{
    Address address = await fetchSingleCep(cep: cep);
  }

  showCep(){
    print('teste');
  }
}
