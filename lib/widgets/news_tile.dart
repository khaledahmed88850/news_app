import 'package:flutter/material.dart';
import 'package:news/models/artical_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.model});
 final ArticalModel model; 
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.network(
              model.image ?? 'https://img.freepik.com/free-vector/white-abstract-wallpaper_23-2148830026.jpg?t=st=1726353677~exp=1726357277~hmac=a861448974a8b5f5c16f470bca42e559c191aaf2c59b38cd241f7fb7894aa2ad&w=900',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
           Text(
             model.title,
            style: const TextStyle(color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis ,
          ),
           Text(
            model.subTitle ?? '', 
            style:const TextStyle(color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.bold
            
            ),
            maxLines: 10,
            overflow: TextOverflow.ellipsis ,
          ),
          
      
        ],
      ),
    );
  }
}
