import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/dio/repository_dio.dart';
import '../../domain/entities/address.dart';
import 'cep_cubit_state.dart';

class CepCubit extends Cubit<CepCubitState> {
  CepCubit() : super(const CepCubitState());

  Future<void> findCep({
    required String cep,
  }) async {
    Address address = await fetchSingleCep(cep: cep);

    emit(
      state.copyWith(
        address: address,
      ),
    );
  }
}

