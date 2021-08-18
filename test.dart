import 'demodata.dart';

main() {


  user.forEach((key, value) {
    User newUser = createUser(value);
  });

}

User createUser(Map<String, dynamic> data) {
  User x = User(
    data['name'],
    data['age'],
    data['emails']
  );
  return x;
}


class User{
  String? name;
  int? age;
  String? email;

  User(this.name, this.age, email) {
    this.email = updateEmail(email);
  } //Default Constructor

  userData() {
    print('$name $age $email');
  }

  userEat() {
    print('$name is Eating');
  }

  String updateEmail(String emails) {
    return '$emails.com';
  }
}

// Constructor or Initializer