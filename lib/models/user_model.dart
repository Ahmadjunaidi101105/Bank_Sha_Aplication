class UserModel {
  final int? id;
  final String? name;
  final String? email;
  final String? password;
  final String? username;
  final int? verified;
  final String? profilePicture;
  final int? balance;
  final String? cardNumber;
  final String? pin;
  final String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.username,
    this.verified,
    this.profilePicture,
    this.balance,
    this.cardNumber,
    this.pin,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      username: json['username'],
      verified: json['verified'],
      profilePicture: json['profile_picture'],
      balance: json['balance'],
      cardNumber: json['card_Number'],
      pin: json['pin'],
      token: json['token'],
    );
  }
  UserModel copyWith({
    String? name,
    String? username,
    String? email,
    String? pin,
    String? password,
    int? balance,
  }) {
    return UserModel(
      id: id,
      username: username ?? this.username,
      name: name ?? this.name,
      email: email ?? this.email,
      pin: pin ?? this.pin,
      password: password ?? this.password,
      balance: balance ?? this.balance,
      verified: verified,
      profilePicture: profilePicture,
      cardNumber: cardNumber,
      token: token,
    );
  }
}
