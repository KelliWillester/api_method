class ServerTimeDto {
  final int timestamp;

  ServerTimeDto({required this.timestamp});


  factory ServerTimeDto.fromJson(Map<String, dynamic> json) {
    return ServerTimeDto(
      timestamp: json['response'],
    );
  }
}
