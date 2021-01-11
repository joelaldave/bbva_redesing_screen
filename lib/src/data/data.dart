import 'package:bbva_redesing_app/src/models/user.dart';

User obtenerDatos() {
  final usuario = new User('Joel', [
    Account(20000, '001ah7297'),
    Account(158000, '001ah7297'),
  ], [
    Card('*62396', 'Visa'),
    Card('*6245', 'Visa')
  ]);

  return usuario;
}
