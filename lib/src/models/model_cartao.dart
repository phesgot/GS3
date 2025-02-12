import 'package:app_gs3/src/models/model_lancamentos.dart';

class ModelCartao {
  final String numero;
  final String limite;
  final String melhorDiaDeCompra;
  final String bandeira;
  final List<ModelLancamentos> lancamentos;

  ModelCartao({
    required this.numero,
    required this.limite,
    required this.melhorDiaDeCompra,
    required this.bandeira,
    required this.lancamentos,
  });
}
