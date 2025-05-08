class SignUpFormModel {
  final String? name;
  final String? email;
  final String? password;
  final String? pin;
  final String? ProfilePictue;
  final String? ktp;

  SignUpFormModel({
    this.name,
    this.email,
    this.password,
    this.pin,
    this.ProfilePictue,
    this.ktp,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'pin': pin,
      'profile_picture': ProfilePictue,
      'ktp': ktp,
    };
  }

  SignUpFormModel copyWith({
    String? pin,
    String? ProfilePictue,
    String? ktp,
  }) {
    return SignUpFormModel(
      name: name,
      email: email,
      password: password,
      pin: pin ?? this.pin,
      ProfilePictue: ProfilePictue ?? this.ProfilePictue,
      ktp: ktp ?? this.ktp,
    );
  }
}
