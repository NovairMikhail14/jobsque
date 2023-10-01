
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/presentation/pages_startup/spashcreen/cubit/splash_state.dart';

class SplashScreenCubit extends Cubit<SplashScreenState>{
  SplashScreenCubit():super(InitialSplashScreen());

  getStartSplash() {
    emit(LoadingSplashScreen());
    try {
      // _timer = Timer(const Duration(seconds: AppConstants.splashDelay),() {
      //       navigation;
      //     });
      emit(EndOnSplashScreen());
    } catch (e) {
      print(e);
    }
    //
  }
}