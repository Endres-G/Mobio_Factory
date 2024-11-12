class AuthModel {
  final String businessName;
  final String email;
  final String password;
  final String cnpj;
  final bool isActive;

  AuthModel({
    required this.isActive,
    required this.businessName,
    required this.email,
    required this.password,
    required this.cnpj,
  });

  // Método para converter o objeto para um mapa JSON
  Map<String, dynamic> toJson() {
    return {
      'businessName': businessName,
      'email': email,
      'password': password,
      'cnpj': cnpj,
      'isActive': isActive,
    };
  }

  // Método para criar uma instância a partir de um mapa JSON
  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      businessName: json['businessName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      cnpj: json['cnpj'] as String,
      isActive: json["isActive"] as bool,
    );
  }
}
