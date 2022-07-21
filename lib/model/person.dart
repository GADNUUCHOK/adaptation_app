class Person {
  String name;
  String email;

  Person({required this.name, required this.email});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(name: json['name'] as String, email: json['email'] as String);
  }
}
