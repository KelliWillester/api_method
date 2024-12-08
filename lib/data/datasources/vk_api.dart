import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/server_time_dto.dart';
import '../mappers/server_time_mapper.dart';
import '../../domain/models/server_time.dart';

class VkApiDataSource {
  final String apiUrl = 'https://api.vk.com/method/utils.getServerTime';
  final String accessToken;
  final String apiVersion = '5.199';

  VkApiDataSource({required this.accessToken});

  Future<ServerTime?> getServerTime() async {
    final response = await http.get(
      Uri.parse('$apiUrl?access_token=$accessToken&v=$apiVersion'),
    );

    final data = json.decode(response.body);
    if (data['response'] != null) {
      final dto = ServerTimeDto.fromJson(data);
      return ServerTimeMapper.toDomain(dto);
    }

    return null;
  }
}
