import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:public_services_app/domain/entities/address.dart';
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
    cepController = TextEditingController();
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
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      labelText: "Cep",
                      floatingLabelStyle: const TextStyle(
                        color: Color(0xFF1cbb7c),
                        fontWeight: FontWeight.w600,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w600,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          width: 2,
                          color: Color(0xFF1cbb7c),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    controller: cepController,
                    keyboardType: TextInputType.name,
                    onSaved: (value) {
                      cepController.text = value!;
                    },
                    textInputAction: TextInputAction.done,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _cubit.addCep(cepController.text);
                  },
                  child: Text("Find Cep"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
