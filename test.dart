
// void main() {

//   Map<int, Map<String, dynamic>> std = {
//     1 : {
//       'name' : 'ahmed',
//       'email' : 'ahmed.com',
//       'age' : 20,
//       'friends' : [
//         'ahmed',
//         'mahmoud'
//       ],
//       'familyMember' : [
//         {
//           'name' : 'ahmed father',
//           'age' : 50
//         },
//         {
//           'name' : 'ahmed mother',
//           'age' : 40
//         },
//         {
//           'name' : 'ahmed brother',
//           'age' : 10
//         }
//       ]
//     },
//     3 : {
//       'name' : 'sayed',
//       'email' : 'sayed.com',
//       'age' : 210,
//       'friends' : [
//         'ahmed',
//         'mahmoud',
//         'mahmoud'
//       ],
//       'familyMember' : [
//         {
//           'name' : 'sayed father',
//           'age' : 60
//         },
//         {
//           'name' : 'sayed mother',
//           'age' : 50
//         },
//         {
//           'name' : 'sayed brother',
//           'age' : 15
//         }
//       ]
//     },
//   };

//   std.forEach((key, value) {
//     List o = [];
//     value['familyMember'].forEach((i) {
//       o.add(i['age']);
//     });
//     num sum = o.reduce((value, element) => value + element);
//     print(sum);
//   });

// }



List<Map<String, dynamic>> data = [
  {
    'name' : 'std1',
    'scores' : {
      'math' : 200,
      'science' : 300,
    },
    'success' : false
  },
  {
    'name' : 'std12',
    'scores' : {
      'math' : 100,
      'science' : 100,
    },
    'success' : true
  },
  {
    'name' : 'std3',
    'scores' : {
      'math' : 250,
      'science' : 350,
    },
    'success' : true
  },
  {
    'name' : 'std4',
    'scores' : {
      'math' : 150,
      'science' : 50,
    },
    'success' : true
  },
];

