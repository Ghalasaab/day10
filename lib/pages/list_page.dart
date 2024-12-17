
import 'package:day10/service/database.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade200,
      ),
      body: FutureBuilder(
        future: DataBase().getData(),
        builder: (context, snapshot){
        if(snapshot.connectionState ==ConnectionState.done){
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
            
          },);
        }


          
        }
        ),
    );
  }
}