import 'package:bloc/bloc.dart';
import 'package:jobsque/domain/usecase/notification_usecase/getNotification_usecase.dart';
import 'package:meta/meta.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
part 'get_notification_state.dart';

class GetNotificationCubit extends Cubit<GetNotificationState> {
  GetNotificationCubit(this.getNotificationUseCase) : super(GetNotificationInitial());
  final AppPreferences _shearedPref = instance<AppPreferences>();
GetNotificationUseCase getNotificationUseCase;
}
