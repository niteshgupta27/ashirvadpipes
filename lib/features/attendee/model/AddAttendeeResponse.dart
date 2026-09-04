class AddAttendeeResponse {
  int? status;
  bool? success;
  String? message;
  AddAttendeeData? data;

  AddAttendeeResponse({this.status, this.success, this.message, this.data});

  AddAttendeeResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? AddAttendeeData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = this.status;
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class AddAttendeeData {
  int? fldAid;

  AddAttendeeData({this.fldAid});

  AddAttendeeData.fromJson(Map<String, dynamic> json) {
    fldAid = json['fld_aid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fld_aid'] = this.fldAid;
    return data;
  }
}
