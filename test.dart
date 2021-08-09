import 'demodata.dart';

// void main() {

//   for(int i = 0; i < data.length; i++) {
//     num sum = 0;
//     data[i]['scores'].forEach((k, v) {
//       sum += v;
//     });
//     if(sum < 250) {
//       data.removeAt(i);
//     }else{
//       stdScoreValidator(sum, data[i]);
//     }
//   }

//   print(data);

// }


stdScoreValidator(num sum, Map<String, dynamic> std) {

  if(sum < 500) {
    std['success'] = false;
  }else{
    std['success'] = true;
  }
}

main() {

  for(int i = 0; i < data.length; i++) {
    num sum = 0;
    data[i]['scores'].forEach((k, v) {
      sum += v;
    });
    if(sum < 250) {
      data.removeAt(i);
      i--;
    }else{
      stdScoreValidator(sum, data[i]);
      studentData(data[i]);
    }
  }
}


studentData(Map<String, dynamic> std) {

  print('''
  Std Name: ${std['name']},
  Std Scorse ${std['scores']},
  Std Stuts ${std['success']}
  ''');
}