import 'package:flutter/material.dart';
import 'package:rest_api_get/models/post_models.dart';
import 'package:rest_api_get/services/api_services.dart';



class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: FutureBuilder(
          future: getPost(),
          builder: (context, AsyncSnapshot snapshot){
            if(!snapshot.hasData){

              return const Center(
                child: CircularProgressIndicator(),
              );
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder:(context)=> const splash()));
            }
            else{
              List<Product> product=snapshot.data;

              return ListView.builder(
                  itemCount: product.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),

                        child: ListTile(
                          leading:   Image.network(
                            product[index].thumbnail,
                            width: 100,
                          ),
                          title:  Text(product[index].title),

                          subtitle: Row(
                            children:  [
                              Expanded(child: Text(product[index].description)),
                              Padding(padding: EdgeInsets.all(8.0),
                              child: Text(product[index].price.toString()),),
                              
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            }

          }),
    );
  }
}
