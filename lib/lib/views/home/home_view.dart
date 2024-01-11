// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:teste/constants/routes/local_routes.dart';
import 'package:teste/views/home/home_validator.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
// ignore: unused_import
import 'package:teste/views/minha_conta/minha_conta_view.dart';
import 'package:teste/widgets/cs_elevated_button.dart';
import 'package:teste/widgets/cs_text_form_field.dart';

import 'home_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _stateView = HomeState();

  final _formKey = GlobalKey<FormState>();

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pushNamed(LocalRoutes.MINHA_CONTA);
    }
  }

  IconData _iconObscureText() {
    if (_stateView.showPassword) {
      return Icons.visibility_outlined;
    }

    return Icons.visibility_off_outlined;
  }

  String _tooltipPassword() {
    if (_stateView.showPassword) {
      return 'Mostrar senha';
    }

    return 'Esconder senha';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplos App'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const CsTextFormField(
                hintText: 'Digite seu usuário',
                labelText: 'Usuário',
                validator: HomeValidator.usuario,
              ),
              const SizedBox(height: 20),
              Observer(builder: (_) {
                return CsTextFormField(
                  hintText: 'Digite sua senha',
                  labelText: 'Senha',
                  maxLength: 30,
                  validator: HomeValidator.senha,
                  obscureText: _stateView.showPassword,
                  suffixIcon: IconButton(
                    onPressed: _stateView.changeShowPassword,
                    tooltip: _tooltipPassword(),
                    icon: Icon(
                      _iconObscureText(),
                    ),
                  ),
                );
              }),
              const SizedBox(height: 20),
              CsElevatedButton(
                onPressed: onPressed,
                label: 'Criar Conta',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
