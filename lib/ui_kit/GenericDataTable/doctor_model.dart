class DoctorList {
  final List<Doctor>? data;
  final int? totalRecords;

  DoctorList(
    this.data,
    this.totalRecords,
  );

  static DoctorList fromMap(Map<String, dynamic> resp) {
    List<Doctor>? data;
    if (resp['data'] != null) {
      data =
          List<Doctor>.from(resp['data'].map((item) => Doctor.fromMap(item)));
    }

    return DoctorList(
      resp['data'] == null ? null : data,
      resp['total_records'] as int?,
    );
  }
}

class Doctor {
  String? fullName;
  String? image;
  String? gender;

  Doctor(this.fullName, this.image, this.gender);

  static Doctor fromMap(Map<String, dynamic> resp) {
    return Doctor(resp['full_name'] as String?, resp['image'] as String?,
        resp['gender'] as String?);
  }

  Doctor toDart(Map<String, dynamic> resp) {
    return Doctor(resp['full_name'] as String?, resp['image'] as String?,
        resp['gender'] as String?);
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = {};
    data['full_name'] = fullName;
    data['image'] = image;
    data['gender'] = gender;
    return data;
  }

  @override
  String toString() {
    String st = "";
    st += 'Doctor: ${fullName!}';
    return st;
  }
}
