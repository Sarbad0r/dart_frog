import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_learning/models/persons.dart';

//file_name
//http://localhost:8080/http?name=%22avaz%22&surname=%22shams%22

Future<Response> onRequest(RequestContext context) async {
  final req = context.request;

  //request parameters
  final param = req.uri.queryParameters;

  //request body
  final body = await req.body();

  //request fromData
  // final formData = await req.formData();

  final headers = req.headers;

  List<Person> persons = Person.persons();

  return Response.json(body: {
    'name': param['name'] ?? '',
    'body': body,
    // 'form_data': formData,
    'headers': headers,
    "persons" : persons.map((e) => e.toJson()).toList(),
  });
}
