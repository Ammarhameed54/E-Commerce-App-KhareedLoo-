import 'package:flutter/material.dart';
import 'package:khareedloo/widgets/support_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // List of Images for the Categories

  List categories = [
    "images/uipics/categories/cat1.jpg",
    "images/uipics/categories/cat2.jpg",
    "images/uipics/categories/cat3.jpg",
    "images/uipics/categories/cat4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      body: Container(
        margin: const EdgeInsets.only(top: 40 , left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey, Ammar", style: AppWidget.boldTextStyle()),
                     Text("Good Morning", style: AppWidget.lightTextStyle()),
                  ],
                ),

                // profile Image
                 ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/uipics/profile.jpg", height: 70, width: 70, fit: BoxFit.cover,))
              ],
            ),
            const SizedBox(height: 30,),

            // Custom Search Textfield

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_rounded),
                hintText: "Search Products", hintStyle: AppWidget.lightTextStyle(),
                border: InputBorder.none
              ),
            ),),
            const SizedBox(height: 15,),
            
            // Categories Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: AppWidget.semiboldTextstyle(),),
                Text("see all", style: AppWidget.lightTextStyle(),)
              ],
            ),

            // Categories Container  
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 70,
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return CategoryTile(image: categories[index]);
              }),
            )
           
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String image;
  const CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.only(right: 20),
      width: 90,
      height: 90,
      decoration:  BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage(image),
        fit: BoxFit.cover,),
        borderRadius: BorderRadius.circular(10)
      ),

      // 2nd Method below to show category images in Container
      
      // child: Column(
      //   children: [
      //     Image.asset(image, height: 50, width: 50, fit: BoxFit.cover,)
      //   ],
      // ),



    );
  }
}