

// class Person{

//   String name;
//   int age;

//   Person(this.name, this.age);

//   String personData() {
//     return '$name, $age';
//   }
// }


// class Emp extends Person{

//   double salary;

//   Emp(name, age, this.salary) : super(name, age);

// }


// class Job{

//   String name;
//   double salary;

//   Job(this.name, this.salary);
// }


// main() {

//   Emp emp = Emp('ahmed', 20, 200.5);

//   print(emp.personData());
// }




class Person extends X with Man, Woman{

  String personName;
  int age;

  Person(this.personName, this.age);
}

class X{}

mixin Man on X{

  String hoppy = 'hope';
  String manName = 'as';

}


mixin Woman on X{

  String fashion = 'fashion';

}


main() {

  Person person = Person('name', 20);

  print(person.personName);
}




// System for Emp ( HR, Sales, Emp)
// calculate salary for each department ( ex: sales salary depend on comision)
// add new emp