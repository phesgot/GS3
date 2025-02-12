class ModelLancamentos {
  String icone;
  String titulo;
  String dataHora;
  String valor;
  String? parcelamento;

  ModelLancamentos({
    required this.icone,
    required this.titulo,
    required this.dataHora,
    required this.valor,
    this.parcelamento,
  });
}
