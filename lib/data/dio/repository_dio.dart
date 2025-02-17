import 'package:dio/dio.dart';
import '../../domain/entities/address.dart';

Future<Address> fetchSingleCep({required String cep}) async{
  final dio = Dio();

  Response response = await dio.get('viacep.com.br/ws/$cep/json/');

  return Address.fromJson(response.data);
}
