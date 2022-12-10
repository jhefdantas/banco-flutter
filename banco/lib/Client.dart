class Client {
  final String name;
  final String lastName;
  final String email;
  final String senha;

  Client( this.name, this.lastName, this.email, this.senha);

  String toString() {
    return 'Client{ name: $name, lastName: $lastName, email: $email, senha: $senha}';
  }
}
