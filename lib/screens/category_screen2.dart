import 'package:dart_models/models/category_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List<CategoryModel> categories = [
       CategoryModel(id:1, name: 'NAME',image: 'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',description: 'Strawberry' ),
      CategoryModel(id:1, name: 'NAME',image: 'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',description: 'Strawberry' ),
      CategoryModel(id:1, name: 'NAME',image: 'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',description: 'Strawberry' ),
      CategoryModel(id:1, name: 'NAME',image: 'https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png',description: 'Strawberry' )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('category'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
              return  ListTile(
              leading: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 243, 159),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image:NetworkImage('https://cdn.pixabay.com/photo/2024/07/02/12/07/ai-generated-8867608_1280.png') )


                ),
              ), 
              title: Text(categories[index].name),
              subtitle:  Text(categories[index].description),
              
            );
          }),
    );
  }
}

// search flutter form fields
//create a simple  login screen.should  have the logo (business logo  must be transparent)
// no app bar
// after a logo ,add a tex login the text should be centered and bold font size 20
//login screen should have the following widgets(text form field email,password,
//dont have an Account (black)  register here is green,)
//  add   validations
