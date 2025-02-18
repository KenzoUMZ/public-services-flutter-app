import 'package:flutter/material.dart';
import '../cubit/cep_cubit.dart';

import 'cep_details.dart';

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
    cepController = TextEditingController(text: '');
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
                  child: const Text('Find Cep'),
                  onPressed: () {
                    _cubit.findCep(cep: cepController.text);
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 400,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CepDetails(addrescep: cepController.text),
                                ElevatedButton(
                                  child: const Text('Find a new Cep'),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
