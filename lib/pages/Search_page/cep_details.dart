import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../cubit/cep_cubit.dart';
import '../cubit/cep_cubit_state.dart';

class CepDetails extends StatefulWidget {
  final String addrescep;
  const CepDetails({
    super.key,
    required this.addrescep,
  });

  @override
  State<CepDetails> createState() => _CepDetailsState();
}

class _CepDetailsState extends State<CepDetails> {
  late CepCubit _cubit;

  @override
  void initState() {
    _cubit = CepCubit()..findCep(cep: widget.addrescep);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder<CepCubit, CepCubitState>(
      bloc: _cubit,
      builder: (_, state) {
        if (state.address.cep == null && state.isLoading == false) {
          return Text('Cep nao encontrado');
        }
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                (state.address.cep ?? '').toString(),
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.logradouro ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.complemento ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.unidade ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.bairro ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.localidade ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.uf ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.estado ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.regiao ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.ibge ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.gia ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.ddd ?? '',
                style: GoogleFonts.abel(),
              ),
              Text(
                state.address.siafi ?? '',
                style: GoogleFonts.abel(),
              ),
            ],
          ),
        );
      },
    ));
  }
}
