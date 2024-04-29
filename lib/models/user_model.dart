class UserModel{
  String id;
  String name;
  int age;
  String email;
  String smoke;
  String gender;

  UserModel(
      {required this.id,
        required this.name,
        required this.age,
        required this.email,
        required this.smoke,
        required this.gender});

  UserModel.fromJson(Map<String,dynamic>json):this(
    id: json['id'],
    name: json['name'],
    age: json['age'],
    email: json['email'],
    smoke: json['smoke'],
    gender: json['gender'],
  );

  Map<String,dynamic> toJson(){
    return{
      "id": id,
      "name": name,
      "age": age,
      "email": email,
      "smoke": smoke,
      "gender": gender,
    };
  }


}
