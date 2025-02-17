import 'package:dio/dio.dart';
import 'package:public_services_app/domain/entities/cep.dart';

Future<List> fetchCep({required String cep}) async {
  final dio = Dio();
  Response response = await dio.get('viacep.com.br/ws/$cep/json/');

  return (response.data as List).map((Cep) {
    return Cep.fromJson(Cep);
  }).toList();  
}

Future<Cep> fetchSingleCep({required String cep}) async{
  final dio = Dio();

  Response response = await dio.get('viacep.com.br/ws/$cep/json/');

  return Cep.fromJson(response.data);
}
