class Experience {
  String userId;
  String postion;
  String typeWork;
  String compName;
  String location;
  String start;
  DateTime updatedAt;
  DateTime end;
  DateTime createdAt;
  int id;

  Experience(
    this.userId,
    this.postion,
    this.typeWork,
    this.end,
    this.compName,
    this.location,
    this.start,
    this.updatedAt,
    this.createdAt,
    this.id,
  );
}

class AddExperience {
  Experience? experienceResponse;
  AddExperience(this.experienceResponse);
}

class EndExperience {
  Experience? experience;
  EndExperience(this.experience);
}
