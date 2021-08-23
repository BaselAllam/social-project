// class with named constructor and default constructor for
    // 1- user
    // 2- std
    // 3- family memeber


// loop on maps for each class separtely 
// increament the counter variable in each class when create a new object
import 'demodata.dart';

void main() {

  List<Std> allStds = [];
  
  std.forEach((key, value) {
    List<FamilyMember> allMembers = [];
    value['familyMember'].forEach((v) {
      FamilyMember newMember = FamilyMember.fromMap(v);
      allMembers.add(newMember);
    });
    Std newStd = Std(
      value['name'],
      value['email'],
      value['age'],
      allMembers,
    );
    allStds.add(newStd);
  });

  print(allStds);
}


class Std{

  String name;
  String email;
  int age;
  List<FamilyMember> families;

  Std(this.name, this.email, this.age, this.families);


  factory Std.fromMap(Map<String, dynamic> i) {
    return Std(
      i['name'],
      i['email'],
      i['age'],
      i['familyMember']
    );
  }
}


class FamilyMember{

  String name;
  int age;

  FamilyMember(this.name, this.age);

  factory FamilyMember.fromMap(Map<String, dynamic> i) {
    return FamilyMember(
      i['name'],
      i['age']
    );
  }
}