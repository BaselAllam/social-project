
void main() {

  Map<int, Map<String, dynamic>> std = {
    1 : {
      'name' : 'ahmed',
      'email' : 'ahmed.com',
      'age' : 20,
      'friends' : [
        'ahmed',
        'mahmoud'
      ],
      'familyMember' : [
        {
          'name' : 'ahmed father',
          'age' : 50
        },
        {
          'name' : 'ahmed mother',
          'age' : 40
        },
        {
          'name' : 'ahmed brother',
          'age' : 10
        }
      ]
    },
    2 : {
      'name' : 'ali',
      'email' : 'ali.com',
      'age' : 30,
      'friends' : [
        'ahmed',
      ],
    },
    3 : {
      'name' : 'sayed',
      'email' : 'sayed.com',
      'age' : 210,
      'friends' : [
        'ahmed',
        'mahmoud',
        'mahmoud'
      ],
      'familyMember' : [
        {
          'name' : 'sayed father',
          'age' : 60
        },
        {
          'name' : 'sayed mother',
          'age' : 50
        },
        {
          'name' : 'sayed brother',
          'age' : 15
        }
      ]
    },
  };

  print('''
  ${std[1]!['familyMember'][0]['name']},
  ${std[1]!['familyMember'][1]['name']}
  ''');

}
