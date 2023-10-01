
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/chat_model.dart';
class UserSendMessageUseCaseInput {
  String token;
  String massage;
  String userId;
  String compId;
  UserSendMessageUseCaseInput(this.token, this.compId, this.massage, this.userId);
}
class UserSendMessageUseCase
    extends BaseUsecase<UserSendMessageUseCaseInput,UserSendMessage> {
Repository repository;
UserSendMessageUseCase(this.repository);

  @override
  Future<Either<Failure, UserSendMessage>> execute(UserSendMessageUseCaseInput input) {
    return repository.userSendMessage(UserSendMessageRequest(input.token, input.compId, input.massage, input.userId));
  }}