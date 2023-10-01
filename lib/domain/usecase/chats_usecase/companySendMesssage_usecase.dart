
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/chat_model.dart';
class CompanySendMessageUseCaseInput {
  String token;
  String userId;
  String compId;
  String massage;
  CompanySendMessageUseCaseInput(this.token, this.compId, this.massage, this.userId);
}
class CompanySendMessageUseCase
    extends BaseUsecase<CompanySendMessageUseCaseInput,CompanySendMessage> {
Repository repository;
CompanySendMessageUseCase(this.repository);

  @override
  Future<Either<Failure, CompanySendMessage>> execute(CompanySendMessageUseCaseInput input) {
    return repository.companySendMessage(CompanySendMessageRequest(input.token, input.compId, input.massage, input.userId));
  }}