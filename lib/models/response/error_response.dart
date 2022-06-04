/// status : "BAD_REQUEST"
/// timestamp : "2022-02-17T06:06:06.070831Z"
/// message : "400 Bad Request: [{\"errorCode\":\"E0000001\",\"errorSummary\":\"Api validation failed: login\",\"errorLink\":\"E0000001\",\"errorId\":\"oaeQZw41brhRVCdQpBMtvlCtQ\",\"errorCauses\":[{\"errorSummary\":\"login: An object with this field already exists in the current organization\"}]}]"

class ErrorResponse {
  ErrorResponse({
      this.status, 
      this.timestamp, 
      this.message,});

  ErrorResponse.fromJson(dynamic json) {
    status = json['status'];
    timestamp = json['timestamp'];
    message = json['message'];
  }
  String? status;
  String? timestamp;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['timestamp'] = timestamp;
    map['message'] = message;
    return map;
  }

}