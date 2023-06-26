class Patient {
  String? myName;
  String? img;
  String? gender;
  int? age;

  Patient({this.myName, this.img, this.gender, this.age});

  // static Patient fromMap(Map<String, dynamic> resp) {
  //   return Patient(resp['my_name'] as String?, resp['image'] as String?,
  //       resp['gender'] as String?, resp['age'] as int?);
  // }

  // Patient toDart(Map<String, dynamic> resp) {
  //   return Patient(resp['my_name'] as String?, resp['image'] as String?,
  //       resp['gender'] as String?, resp['age'] as int?);
  // }

  Patient.fromMap(Map<String, dynamic> map) {
    myName = map['my_name'];
    img = map['image'];
    gender = map['gender'];
    age = map['age'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = {};
    data['my_name'] = myName ?? '';
    data['image'] = img ?? '';
    data['gender'] = gender ?? '';
    data['age'] = age;
    return data;
  }

  @override
  String toString() {
    String st = "";
    st += 'Doctor: ${myName!}';
    return st;
  }
}
