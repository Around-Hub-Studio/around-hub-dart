import 'dart:convert';

void main() {
  var jsonString = '''
[
  {"name" : "around hub studio"},
  {"channel" : "YouTube"}
]
''';

  var decodedData = jsonDecode(jsonString);
  print(decodedData is List);
  print(decodedData);

  var name = decodedData[0];
  print(name);
  print(name is Map);
  print(name["name"]);
}
