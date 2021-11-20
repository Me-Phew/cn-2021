class Response {
  final int errorNum;
  final int successNum;

  Response({required this.errorNum, required this.successNum});

  factory Response.fromJson(Map<dynamic, dynamic> json) {
    return Response(
      errorNum: json['errorNum'],
      successNum: json["successNum"],
    );
  }
}
