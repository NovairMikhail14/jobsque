
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/notification_model.dart';
class GetNotificationUseCaseInput {
  String token;
  GetNotificationUseCaseInput(
    this.token,
  );
}
class GetNotificationUseCase
    extends BaseUsecase<GetNotificationUseCaseInput,GetNotification> {
Repository repository;
GetNotificationUseCase(this.repository);

  @override
  Future<Either<Failure, GetNotification>> execute(GetNotificationUseCaseInput input) {
    return repository.getNotification(GetNotificationRequest(input.token));
  }}