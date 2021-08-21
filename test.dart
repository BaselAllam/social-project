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
  int counter = 0;

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


// class with named constructor and default constructor for
    // 1- user
    // 2- std
    // 3- family memeber


// loop on maps for each class separtely 
// increament the counter variable in each class when create a new object