class FatoDeGato {
  String? fact;
  int? length;

  FatoDeGato({this.fact, this.length});

  FatoDeGato.fromJson(Map<String, dynamic> json) {
    fact = json['fact'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fact'] = fact;
    data['length'] = length;
    return data;
  }
}