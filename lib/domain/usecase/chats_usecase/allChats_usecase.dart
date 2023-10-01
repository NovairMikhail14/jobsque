
import 'package:dartz/dartz.dart';
import 'package:jobsque/data/network/failure.dart';
import 'package:jobsque/data/network/requests.dart';
import 'package:jobsque/domain/usecase/base_usecase.dart';
import 'package:jobsque/domain/repository/repository.dart';

import '../../model/chat_model.dart';
class AllChatUseCaseInput {
  String token;
  String userId;
  String compId;
  AllChatUseCaseInput(this.token, this.compId, this.userId);
}
class AllChatUseCase
    extends BaseUsecase<AllChatUseCaseInput,AllChat> {
Repository repository;
AllChatUseCase(this.repository);

  @override
  Future<Either<Failure, AllChat>> execute(AllChatUseCaseInput input) {
    return repository.allChat(AllChatRequest(input.token, input.compId, input.userId));
  }}