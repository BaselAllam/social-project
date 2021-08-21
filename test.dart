import 'demodata.dart';

main() {

  List<User> allUsers = [];

  user.forEach((key, value) {
    User newUser = User.fromMap(value);
    allUsers.add(newUser);
  });

  num sum = 0;

  for(User user in allUsers) {
    sum += user.age!;
  }

  print(sum);

}


class User{
  String? name;
  int? age;
  String? email;

  User(this.name, this.age, email) {
    this.email = updateEmail(email);
  }

   factory User.fromMap(Map<String, dynamic> i) {
    return User(
      i['name'],
      i['age'],
      i['email']
    );
  }

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