/// Represents the type of a user in the application.
enum UserType {
  admin,
  student,
  professor,
  ta,
  stuff,
}

/// Represents a user in the application.
class User {
  late String id;
  late String fullName;
  late String userName;
  late String phoneNumber;
  late String image;
  late String email;
  late String password;
  late String biography;
  late String token;
  late UserType userType;

  /// Constructs a User object with the specified [fullName],[image], [email], [password], [biograpghy], and [token].
  User(
      {required this.fullName,
      required this.userName,
      required this.image,
      required this.email,
      required this.password,
      required this.biography,
      required this.phoneNumber,
      required this.token,
      required this.userType});
  User.dummy(
      {required this.id,
      required this.fullName,
      required this.userName,
      required this.image,
      required this.email,
      required this.password,
      required this.biography,
      required this.token,
      required this.userType});

  /// Constructs a User object from a JSON map.
  User.fromJson(Map<String, dynamic> json) {
    fullName = json['fullName'];
    userName = json['userName'];
    phoneNumber = json['phoneNumber'];
    image = json['image'];
    email = json['email'];
    biography = json['biography'];
    password = json['password'];
    token = json['token'];
  }

  /// Converts the User object to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['userName'] = this.userName;
    data['phoneNumber'] = this.phoneNumber;
    data['image'] = this.image;
    data['email'] = this.email;
    data['password'] = this.password;
    data['biography'] = this.biography;
    data['token'] = this.token;
    return data;
  }

  /// Sets the user type based on the provided [userType] string.
  void setUserType(String userType) {
    switch (userType) {
      case 'admin':
        this.userType = UserType.admin;
        break;
      case 'student':
        this.userType = UserType.student;
        break;
      case 'stuff':
        this.userType = UserType.stuff;
        break;
      default:
        this.userType = UserType.student;
    }
  }

  @override
  String toString() {
    return 'fullName: $fullName, email: $email, password: $password, token: $token';
  }
}
