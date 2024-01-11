class HomeValidator {
  static String? usuario(String? usuario) {
    if (usuario!.isEmpty) {
      return 'Informe seu usuário';
    }

    return null;
  }

  static String? senha(String? senha) {
    if (senha!.isEmpty) {
      return 'Informe o sua senha';
    }

    return null;
  }
}
