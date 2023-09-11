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
  // initialPage(){
  //   emit(initialPage());
  //   return SliderViewObject(onBoardingList[currentIndex],onBoardingList.length,currentIndex);
  // }

  currentPage(){
    print("currentPage $currentIndex");
    emit(CurrentPage());
    return SliderViewObject(onBoardingList[currentIndex],onBoardingList.length,currentIndex);
  }

  getCurrentIndex(index){
print(" Need index $index");
    if(index < onBoardingList.length){
      print("Index ${currentIndex}");
      currentIndex = index;
      currentPage();

    }
    else if(index > onBoardingList.length-1) {
      currentIndex = 0;
      currentPage();

    }else if(index < 0){
      currentIndex = onBoardingList.length-1;
      currentPage();

    }
    print(" index1 $index");

  }
  onScrollNext(){
    if(currentIndex < onBoardingList.length-1){
      currentIndex+=1;
      currentPage();
      print("currentIndex ${currentIndex}");
      return currentIndex;
    }
    else if(currentIndex > onBoardingList.length-1) {
      currentIndex = 0;
      print(" currentIndex1 ${currentIndex}");
      currentPage();
      return currentIndex;
    }else{
    }
  }
  // onScrollPrevious(){
  //   if(currentIndex > 0){
  //     currentIndex--;
  //     emit(PreviousPage());
  //   }
  //   else if(currentIndex == -1){
  //     currentIndex = onBoardingList.length;
  //   }
  // }
  onPressSkip(){
    emit(SkipToHomePage());
  }

  }
