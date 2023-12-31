import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/widgets/main_button.dart';
import 'package:jobsque/resources/assets_manager.dart';
import 'package:jobsque/resources/color_manger.dart';
import 'package:jobsque/resources/constant_manager.dart';
import 'package:jobsque/resources/font_manager.dart';
import 'package:jobsque/resources/strings_manager.dart';
import 'package:jobsque/resources/style_manager.dart';
import 'package:jobsque/resources/value_manager.dart';
import '../../../../app/app_pref.dart';
import '../../../../app/di.dart';
import '../../../../domain/model/onBoarding_model.dart';
import '../../../../resources/routes_manager.dart';
import '../cubit/onboarding_cubit.dart';
import '../cubit/onboarding_state.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  // final OnBoardViewModel _viewModel = OnBoardViewModel();
  final AppPreferences _shearedPref = instance<AppPreferences>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return _getContentWidget(BlocProvider.of<OnBoardingCubit>(context).currentPage());
      },
    );
  }

  Widget _getContentWidget(SliderViewObject? sliderViewObject) {
    if (sliderViewObject == null) {
      return const Text("Empty Page");
    } else {
      return Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(ImageAssets.logo, height: AppSize.s20),
          actions: [
            TextButton(
              onPressed: () {
                _shearedPref.setAppOnBoardingViewed();
                Navigator.pushNamed(context, Routes.createAccountRoute);
              },
              child: Text(AppStrings.skip,
                  style: Theme.of(context).textTheme.bodyMedium),
            )
          ],
          centerTitle: false,
          toolbarHeight: AppSize.s40,
          backgroundColor: ColorManager.general,
          elevation: AppSize.s0,
        ),
        body: PageView.builder(
          controller: _pageController,
          itemCount: sliderViewObject.numOfSlides,
          onPageChanged: (index) {
            print("View $index");
            BlocProvider.of<OnBoardingCubit>(context).getCurrentIndex(index);
          },
          itemBuilder: (context, index) {
            return OnBoardingPage(sliderViewObject.sliderObject, index);
          },
        ),
        bottomSheet: _getBottomSheetWidget(sliderViewObject),
      );
    }
  }

  Widget _getBottomSheetWidget(SliderViewObject sliderViewObject) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
      color: ColorManager.general,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < sliderViewObject.numOfSlides; i++)
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p4),
                  child: _getProperCircle(i, sliderViewObject.currentIndex),
                )
            ],
          ),
          MainButton(
            onPress: () {
              if(sliderViewObject.currentIndex ==  sliderViewObject.numOfSlides-1){
                _shearedPref.setAppOnBoardingViewed();
                Navigator.pushReplacementNamed(context,Routes.loginRoute);
              }else {
                _pageController.animateToPage(
                    BlocProvider.of<OnBoardingCubit>(context).onScrollNext(),
                    duration: const Duration(
                        microseconds: AppConstants.sliderAnimationTime),
                    curve: Curves.linear);
              }
            },
            text: sliderViewObject.sliderObject.bottomText,
          ),
        ],
      ),
    );
  }

  Widget _getProperCircle(int index, int currentIndex) {
    if (index == currentIndex) {
      return CircleAvatar(
        radius: 4,
        backgroundColor: ColorManager.primary500,
      );
    } else {
      return CircleAvatar(
        radius: 3,
        backgroundColor: ColorManager.primary200,
      );
    }
  }

  @override
  void dispose() {
    // _viewModel.dispose();
    super.dispose();
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject _sliderObject;
  int index;

  OnBoardingPage(this._sliderObject, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            SizedBox(
                height: 300,
                width: double.infinity,
                child: index == 0
                    ? Image.asset(
                        _sliderObject.image,
                        fit: BoxFit.fitWidth,
                      )
                    : Image.asset(_sliderObject.image)),
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.white,
                  inset: true,
                )
              ]),
              height: 300,
              width: double.infinity,
            ),
          ],
        ),
        SizedBox(height: AppSize.s12,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: _sliderObject.title1,
                  style: getMediumStyle(
                      color: ColorManager.neutral900, fontSize: FontSize.s32)),
              TextSpan(
                  text: _sliderObject.title2,
                  style: getMediumStyle(
                      color: ColorManager.primary900, fontSize: FontSize.s32)),
              TextSpan(
                  text: _sliderObject.title3,
                  style: getMediumStyle(
                      color: ColorManager.neutral900, fontSize: FontSize.s32)),
            ]),
          ),
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p14),
          child: Text(
            _sliderObject.subTitle,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const SizedBox(
          height: AppSize.s20,
        ),
      ],
    );
  }
}
