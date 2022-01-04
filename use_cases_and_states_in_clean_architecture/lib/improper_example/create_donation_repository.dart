import 'package:http/http.dart' as http;

class CreateDonationRepository {
  static call() async {
    const uri = 'https://twitch.com/donations/create';
    final url = Uri.parse(uri);
    await http.post(url);
  }
}
