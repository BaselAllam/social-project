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
    newStd.setCounter(10);
    allStds.add(newStd);
  });

  FamilMemberController controller = FamilMemberController();

  print(allStds[0].families);

  controller.addNewFamilyMember(allStds[0], newMember);
  controller.addNewFamilyMember(allStds[1], newMember);

  // addNewFamilyMember(allStds[0], newMember);

  print(allStds[0].families);
}


class Std{

  String name;
  String email;
  int age;
  List<FamilyMember> families;
  static int _counter = 0;

  int get counterValue => _counter;

  int getCounter() {
    return _counter;
  }

  int setCounter(int newValue) {
    _counter = newValue;
    return _counter;
  }

  Std(this.name, this.email, this.age, this.families) {
    _counter++;
  }


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


class FamilMemberController{

  addNewFamilyMember(Std std, Map<String, dynamic> newMemberData) {

    FamilyMember newMember = FamilyMember.fromMap(newMemberData);

    std.families.add(newMember);
  }
  
}