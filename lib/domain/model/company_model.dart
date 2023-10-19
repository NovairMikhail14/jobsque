class Company {
  int id;
  String name;
  String image;
  String email;
  String website;
  String about;
  String location;
  String createdAt;
  String updatedAt;

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
