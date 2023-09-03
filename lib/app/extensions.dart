import 'package:jobsque/app/constants.dart';

extension NonNullString on String?{
  String orEmpty(){
    if(this == null){
      return Constants.empty;
    }else{
      return this!;
    }
  }
}
extension NonNullint on int?{
  int orZero(){
    if(this == null){
      return Constants.zero;
    }else{
      return this!;
    }
  }
}