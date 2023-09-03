import 'dart:async';

import 'package:jobsque/domain/model/models.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/presentation/base/base_view_model.dart';

class OnBoardViewModel extends BaseViewModel with OnBoardViewModelInput, OnBoardViewModelOutput {
  final StreamController _streamController = StreamController<SliderViewObject>();
  late final List<SliderObject> _list;

  int _currentIndex = 0;

  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    // view model start your job
    _list = _getSliderData();
    _addDataToSink();
  }

  @override
  int goNext() {
    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  @override
  // TODO: implement inputSliderViewObject
  Sink get inputSliderViewObject {
    return _streamController.sink;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _addDataToSink();
    // TODO: implement onPageChanged
  }

  @override
  // TODO: implement outputSliderViewObject
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((sliderViewObject) => sliderViewObject);

  List<SliderObject> _getSliderData() => [
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

  void _addDataToSink() {
    inputSliderViewObject.add(
        SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }
}

abstract class OnBoardViewModelInput {
  void goNext();

  void goPrevious();

  void onPageChanged(int index);

  Sink get inputSliderViewObject;
}

abstract class OnBoardViewModelOutput {
  Stream<SliderViewObject> get outputSliderViewObject;
}
