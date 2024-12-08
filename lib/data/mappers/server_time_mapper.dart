import '../dto/server_time_dto.dart';
import '../../domain/models/server_time.dart';

class ServerTimeMapper {
  static ServerTime toDomain(ServerTimeDto dto) {
    return ServerTime(
      dateTime: DateTime.fromMillisecondsSinceEpoch(dto.timestamp * 1000),
    );
  }
}
