class Person {
  int? id;
  String? name;
  String? surName;
  int? age;

  Person({required this.id, this.name, this.surName, this.age});

  static List<Person> persons() => [
        Person(id: 1, name: "avaz", surName: 'shams', age: 21),
        Person(id: 1, name: "avazsho", surName: 'shams', age: 21),
        Person(id: 1, name: "avazbek", surName: 'shams', age: 21),
      ];

  Map<String, dynamic> toJson() {
    return {"id": id, "name": name, "surName": surName, "age": age};
  }
}
