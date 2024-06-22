import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF5F1),
      body: Container(
        padding: const EdgeInsets.only(top: 60),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children:[ GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: const Icon(Icons.arrow_back_rounded, size: 40,),
                )),
                Center(child: Image.asset("images/product_images/headphones.png", height: 400,))
           ] ),

           Expanded(
             child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              width: MediaQuery.of(context).size.width,
              child: const Text("Hello This is My first Product Which Is Headphones ",),
             ),
           )
            
          ],
        ),
      ),
    );
  }
}