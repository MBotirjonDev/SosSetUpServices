import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sossetupservice/models/auth_controller/auth_post_model.dart';

abstract class HttpRepositorySignUpReg {
  Future<List<AuthModel>> signUpHttpFromApi();
}

class SampleSignUp extends HttpRepositorySignUpReg {
  @override
  Future<List<AuthModel>> signUpHttpFromApi() async {
    var headers = {'Content-Type': 'application/json', 'Accept': '*/*'};
    var request =
        http.Request('POST', Uri.parse('http://185.196.214.192:8097/api/auth'));
    request.body = json.encode({
      "id": "urn:uuid:e90a0592-2f0e-3255-43fe-30555e658cf2",
      "lastName": "qui dolore est velit adipisicing",
      "firstName": "dfgdf",
      "phoneNumber": "Excepteur nulla",
      "location": "Duis",
      "address": "exercitation quis Ut",
      "password": "Excepteur ipsum",
      "balance": -22800967.897460118,
      "usersType": "CLIENT",
      "currentCountry": "EUROPE",
      "residentCardPhoto": "urn:uuid:4b1573dd-386c-01f1-32b6-492c367120db",
      "avatarPhoto": "urn:uuid:cc6aa01a-9689-2e1c-39d2-9baad7cfc194",
      "activeAccount": true
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }

    throw UnimplementedError();
  }
}
