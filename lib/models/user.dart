class User {
  final String userid;
  final String password;

  const User({
    required this.userid,
    required this.password,
  });

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      userid: snapshot["userid"],
      password: snapshot["password"],
    );
  }

  Map<String, dynamic> toJson() => {
        "userid": userid,
        "password": password,
      };
}
