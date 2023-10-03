import 'package:http/http.dart' as http;

import '../models/post_models.dart';

var base = "https://dummyjson.com";

getPost() async {
  Uri url = Uri.parse("$base/products");
  var res = await http.get(url);


  try{
    if (res.statusCode == 200) {

      var data = postmodelsFromJson(res.body);
      return data.products;
    }else{
      print("Connection 1 Error");
    }

  }catch(e){
    print(e.toString());
  }

}
