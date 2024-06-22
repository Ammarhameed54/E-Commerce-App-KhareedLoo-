import 'package:flutter/material.dart';
import 'package:khareedloo/widgets/support_widgets.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Tap to Back on Home Screen
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    // Back Navigation Icon
                    child: Icon(
                      Icons.arrow_back_rounded,
                      size: 40,
                    ),
                  ),
                ),
                // Product Image on Detail Page
                Center(
                  child: Image.asset(
                    "images/product_images/headphones.png",
                    height: 400,
                  ),
                ),
              ],
            ),
            //Product Name and its Description
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Headphones",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Text(
                          "\$50",
                          style: TextStyle(color: Colors.orange, fontSize: 20),
                        ),
                      ],
                    ),
                    Text(
                      "Description",
                      style: AppWidget.semiboldTextstyle(),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                        "Hello this is a headphones by Nubwo 1 a popular brand in China, these headphones are very Nice, their Sound Quality is So Good that I personally love these Headphones, the price is Reasonable and the quality is Mind Blowing. The headphones come along with Lightning on both Sides."),
                    // Spacer widget to push the button to the bottom
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange,
                        ),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: AppWidget.semiboldTextstyle(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}














// import 'package:flutter/material.dart';
// import 'package:khareedloo/widgets/support_widgets.dart';

// class ProductDetail extends StatefulWidget {
//   const ProductDetail({super.key});

//   @override
//   State<ProductDetail> createState() => _ProductDetailState();
// }

// class _ProductDetailState extends State<ProductDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFEF5F1),
//       body: Container(
//         padding: const EdgeInsets.only(top: 60),
//         child:  Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children:[ 


//                 // Tap to Back on Home Screen
//                 GestureDetector(
//                 onTap: (){
//                   Navigator.pop(context);
//                 },
//                 child: const Padding(
//                   padding: EdgeInsets.only(left: 20),

//                   // Back Navigation Icon
//                   child: const Icon(Icons.arrow_back_rounded, size: 40,),
//                 )),

//                 // Product Image on Detail Page
//                 Center(child: Image.asset("images/product_images/headphones.png", height: 400,))
//            ] ),

//            //Product Name and its Discription

//            Expanded(
//              child: Container(
//               padding: EdgeInsets.only(top: 20, left: 20, right: 20),
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
//               ),
//               width: MediaQuery.of(context).size.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text("Headphones",style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 30,
//                             fontWeight: FontWeight.bold)),
//                             Text("\$50", style: TextStyle(color: Colors.orange, fontSize: 20),),
//                     ],
//                   ),
                  
//                   Text("Discription", style: AppWidget.semiboldTextstyle(),),
//                   SizedBox(height: 10,),
//                    Text("Hello this is a headphones by Nubwo 1 a popular brand in China , these headphones are very Nice, their Sound Quality is So Good that i personally love these Headphones , the price is Reasonable and the quality is Mind Blowing the headphones came along with the Lightning in both Sides"),
             
//                 Container(
//                   height: 60,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.orange
//                   ),
//                   child: Center(child: Text("Buy Now", style: AppWidget.semiboldTextstyle(),)),
//                 )
//               ],

//               ),
//              ),
//            )
            
//           ],
//         ),
//       ),
//     );
//   }
// }
