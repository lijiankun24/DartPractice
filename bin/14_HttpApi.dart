import 'dart:io';
import 'dart:convert';

main() async {
  var url = Uri.parse('http://wanandroid.com/wxarticle/chapters/json');
  var httpClient = new HttpClient();
  var request = await httpClient.getUrl(url);
  print('has a request');
  var response = await request.close();
  print('has a response');
  var data = await response.transform(utf8.decoder).toList();
  var body = data.join('');
  print(body);
  httpClient.close();
}