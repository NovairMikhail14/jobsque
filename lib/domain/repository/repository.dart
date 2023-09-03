 import 'package:jobsque/data/network/requests.dart';
 import 'package:dartz/dartz.dart';
import 'package:jobsque/domain/model/models.dart';
import '../../data/network/failure.dart';
abstract class Repository{
   Future<Either <Failure,Authentication>> login(LoginRequest loginRequest );
}