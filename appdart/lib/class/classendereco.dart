class Endereco {
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String estado;
  String cep;

  Endereco(this.logradouro, this.numero, this.complemento, this.bairro, this.estado, this.cep);



  @override
  String toString() {
    return "Endereço: $logradouro, $numero, $complemento, $bairro/$estado, ${cep.substring(0,6)}-${cep.substring(5,8)}";
  }
}