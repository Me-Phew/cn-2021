class DataResponse {
  final int errorNum;
  final int successNum;
  final dynamic data;

  DataResponse({required this.errorNum, required this.successNum, required this.data});

  factory DataResponse.fromJson(Map<String, dynamic> json) {
    return DataResponse(
      errorNum: json['errorNum'],
      successNum: json["successNum"],
      data: json["data"]
    );
  }
}
