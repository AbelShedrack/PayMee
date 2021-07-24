import 'package:http/http.dart' as http;
import 'package:nairapay/Users.dart';

class Services {
  static const String url = "https://jsonplaceholder.typicode.com/users";
  static Future<List<User>> getUsers() async {
    try {
      final respones = await http.get(Uri.parse(url));
      if (respones.statusCode == 200) {
        final List<User> users = userFromJson(respones.body);
        return users;
      } else {
        // ignore: deprecated_member_use
        return List<User>();
      }
    } catch (e) {
      // ignore: deprecated_member_use
      return List<User>();
    }
  }
}
