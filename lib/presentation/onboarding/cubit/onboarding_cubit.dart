import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/presentation/onboarding/cubit/onboarding_state.dart';

import '../../../domain/model/models.dart';
import '../../../resources/assets_manager.dart';
import '../../../resources/strings_manager.dart';

class OnBoardingCubit extends Cubit<OnBoardingState>{
  OnBoardingCubit():super(InitialOnBoarding());
  List<SliderObject> onBoardingList = [
    SliderObject(
        ImageAssets.onBoardingLogo1,
        AppStrings.onBoardingTitle1_1,
        AppStrings.onBoardingTitle1_2,
        AppStrings.onBoardingTitle1_3,
        AppStrings.onBoardingSubTitle1,
        AppStrings.btnNext),
    SliderObject(
        ImageAssets.onBoardingLogo2,
        AppStrings.onBoardingTitle2_1,
        AppStrings.onBoardingTitle2_2,
        AppStrings.onBoardingTitle2_3,
        AppStrings.onBoardingSubTitle2,
        AppStrings.btnNext),
    SliderObject(
        ImageAssets.onBoardingLogo3,
        AppStrings.onBoardingTitle3_1,
        AppStrings.onBoardingTitle3_2,
        AppStrings.onBoardingTitle3_3,
        AppStrings.onBoardingSubTitle3,
        AppStrings.btnGetStarted),
  ];

  int  currentIndex = 0;
  initialPage(){
    emit(initialPage());
    return SliderViewObject(onBoardingList[currentIndex],onBoardingList.length,currentIndex);
  }

  currentPage(){
    print(currentIndex);
    emit(CurrentPage());
    return SliderViewObject(onBoardingList[currentIndex],onBoardingList.length,currentIndex);

  }

  getCurrentIndex(index){
    currentIndex = index;
    print("Cubit $index");
  }
  onScrollNext(){
    if(currentIndex < onBoardingList.length){
      emit(NextPage());
      return currentIndex++;
    }
    else  {
    }
  }
  onScrollPrevious(){
    if(currentIndex > 0){
      currentIndex--;
      emit(PreviousPage());
    }
    else  {

    }
  }
  onPressSkip(){
    emit(SkipToHomePage());
  }

  }
