class Company {
  int id;
  String name;
  dynamic image;
  String email;
  String website;
  String about;
  String location;
  DateTime createdAt;
  DateTime updatedAt;

  Company(
    this.id,
    this.name,
    this.image,
    this.email,
    this.website,
    this.about,
    this.location,
    this.createdAt,
    this.updatedAt,
  );
}

class GetAllCompany {
  List<Company> companyList;
  GetAllCompany(this.companyList);
}
