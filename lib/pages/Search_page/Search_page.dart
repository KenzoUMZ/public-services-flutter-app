import 'package:flutter/material.dart';
import 'package:public_services_app/pages/cubit/cep_cubit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late CepCubit _cubit;
  late TextEditingController cepController;

  @override
  void initState() {
    _cubit = CepCubit();
    cepController = TextEditingController(text: '01001000');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x0fffffff),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: cepController,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _cubit.findCep(cep: cepController.text);
                  },
                  child: Text('Find Cep'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
