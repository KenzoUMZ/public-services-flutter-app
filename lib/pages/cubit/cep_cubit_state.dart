import 'package:equatable/equatable.dart';

import '../../domain/entities/address.dart';

class CepCubitState extends Equatable {
  final bool isLoading;
  final Address address;

  const CepCubitState({
    this.isLoading = false,
    this.address = const Address(),
  });

  CepCubitState copyWith({
    bool? isLoading,
    Address? address,
  }) {
    return CepCubitState(
      isLoading: isLoading ?? this.isLoading,
      address: address ?? this.address,
    );
    
  }

  @override
  List<Object?> get props => [
        isLoading,
        address,
      ];
}