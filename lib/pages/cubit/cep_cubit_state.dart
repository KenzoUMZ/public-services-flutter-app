import 'package:equatable/equatable.dart';

class CepCubitState extends Equatable {
  final bool isLoading;
  final int? inputUser;

  const CepCubitState({
    this.isLoading = false,
    this.inputUser = 0,
  });

  CepCubitState copyWith({
    bool? isLoading,
    int? inputUser,
  }) {
    return CepCubitState(
      isLoading: isLoading ?? this.isLoading,
      inputUser: inputUser,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        inputUser,
      ];
}