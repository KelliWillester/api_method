import 'data/datasources/vk_api.dart';

void main() async {
  final vkApi = VkApiDataSource(accessToken: '');

  final serverTime = await vkApi.getServerTime();
  if (serverTime != null) {
    print('Текущее время на сервере: ${serverTime.dateTime}');
  } else {
    print('Не удалось получить время с сервера');
  }
}
