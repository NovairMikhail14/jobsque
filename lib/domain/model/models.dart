class SliderObject {
  String image;
  String title1;
  String title2;
  String title3;
  String subTitle;
  String bottomText;

  SliderObject(this.image, this.title1, this.title2, this.title3, this.subTitle,
      this.bottomText);
}
class SliderViewObject{
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}
class User{
  int id;
  String name;
  String email;
  String createdAt;
  String updatedAt;

  User(this.id, this.name, this.email, this.createdAt, this.updatedAt);
}

class Authentication {
  User? user;
  String token;
  Authentication(this.user, this.token);
}