import 'package:flutter/material.dart';
import 'package:khareedloo/widgets/support_widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            )
           
          ],
        ),
      ),
    );
  }
}