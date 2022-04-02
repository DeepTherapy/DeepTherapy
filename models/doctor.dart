class Doctor {
  final String did;
  final String demail;
  final String dname;
  final String dpass;


  Doctor({required this.did,required this.demail,required this.dname, required this.dpass});

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      did: json['eid'],
      dname: json['ename'],
      demail: json['eemail'],
      dpass: json['dpass']
    );
  }

  Map<String, dynamic> toJson() => {
    'did' : did,
    'dname': dname,
    'demail': demail,
    'dpass': dpass
  };
}