class CardapioModelo {
  int id;
  String nome;
  String descricao;
  String caloria;
  String foto;

  CardapioModelo({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.caloria,
    required this.foto,
  });

  // Construtor nomeado para criar um CardapioModelo quando não encontrado
  CardapioModelo.naoEncontrado()
      : id = 0,
        nome = 'Não encontrado',
        descricao = '',
        caloria = '',
        foto = '';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'foto': foto,
      'caloria': caloria
    };
  }

  factory CardapioModelo.fromMap(Map<String, dynamic> map) {
    return CardapioModelo(
        id: map['id'],
        nome: map['nome'],
        descricao: map['descricao'],
        foto: map['foto'],
        caloria: map['caloria']);
  }
}
