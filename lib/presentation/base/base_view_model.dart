abstract class BaseViewModel extends BaseViewModelInput with BaseViewModelOutput{
  // shared variables and functions that will be user through any view model
}
abstract class BaseViewModelInput{
  void start();
  void dispose();
}
abstract class BaseViewModelOutput{
}