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
      body: SingleChildScrollView(
        child: Container(
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
        
              const SizedBox(height: 20,),
        
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
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Products", style: AppWidget.semiboldTextstyle(),),
                  Text("see all", style: AppWidget.lightTextStyle(),),
                ],
              ),
        
            // Product Container
              const SizedBox(height: 20,),
              Container(
                    height: 200,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(padding: const EdgeInsets.symmetric(horizontal: 8,),
                        margin: const EdgeInsets.only(right: 20),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset("images/product_images/headphones.png", height: 130, width: 130, fit: BoxFit.cover,),
                              Text("HeadPhones", style: AppWidget.semiboldTextstyle(),),
                              Row(
                                children: [Text("Price: \$40", style: AppWidget.semiboldTextstyle(),),
                                const SizedBox(width: 30,),
                                Container(padding: const EdgeInsets.all(5),
                                  decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange
                                ),
                                  child: const Icon(Icons.add),)
                                ],
                              )
                            ],
                          ),
                        ), 
        
                        // 2nd Product same copy from above and paste it here 
        
        
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 8,),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset("images/product_images/Watch.jpg", height: 130, width: 130, fit: BoxFit.cover,),
                              Text("Watch", style: AppWidget.semiboldTextstyle(),),
                              Row(
                                children: [Text("Price: \$100", style: AppWidget.semiboldTextstyle(),),
                                const SizedBox(width: 30,),
                                Container(padding: const EdgeInsets.all(5),
                                  decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange
                                ),
                                  child: const Icon(Icons.add),)
                                ],
                              )
                            ],
                          ),
                        ),
        
                        // 3rd Product 
        
                        Container(padding: const EdgeInsets.symmetric(horizontal: 8,),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset("images/product_images/laptop.jpg", height: 130, width: 130, fit: BoxFit.cover,),
                              Text("Laptop", style: AppWidget.semiboldTextstyle(),),
                              Row(
                                children: [Text("Price: \$600", style: AppWidget.semiboldTextstyle(),),
                                const SizedBox(width: 30,),
                                Container(padding: const EdgeInsets.all(5),
                                  decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange
                                ),
                                  child: const Icon(Icons.add),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
        
        
                  // another list view 
        
        
                  const SizedBox(height: 20,),
              Container(
                    height: 200,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(padding: const EdgeInsets.symmetric(horizontal: 8,),
                        margin: const EdgeInsets.only(right: 20),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset("images/product_images/headphones.png", height: 130, width: 130, fit: BoxFit.cover,),
                              Text("HeadPhones", style: AppWidget.semiboldTextstyle(),),
                              Row(
                                children: [Text("Price: \$40", style: AppWidget.semiboldTextstyle(),),
                                const SizedBox(width: 30,),
                                Container(padding: const EdgeInsets.all(5),
                                  decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange
                                ),
                                  child: const Icon(Icons.add),)
                                ],
                              )
                            ],
                          ),
                        ), 
        
                        // 2nd Product same copy from above and paste it here 
        
        
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.symmetric(horizontal: 8,),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset("images/product_images/Watch.jpg", height: 130, width: 130, fit: BoxFit.cover,),
                              Text("Watch", style: AppWidget.semiboldTextstyle(),),
                              Row(
                                children: [Text("Price: \$100", style: AppWidget.semiboldTextstyle(),),
                                const SizedBox(width: 30,),
                                Container(padding: const EdgeInsets.all(5),
                                  decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange
                                ),
                                  child: const Icon(Icons.add),)
                                ],
                              )
                            ],
                          ),
                        ),
        
                        // 3rd Product 
        
                        Container(padding: const EdgeInsets.symmetric(horizontal: 8,),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset("images/product_images/laptop.jpg", height: 130, width: 130, fit: BoxFit.cover,),
                              Text("Laptop", style: AppWidget.semiboldTextstyle(),),
                              Row(
                                children: [Text("Price: \$600", style: AppWidget.semiboldTextstyle(),),
                                const SizedBox(width: 30,),
                                Container(padding: const EdgeInsets.all(5),
                                  decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange
                                ),
                                  child: const Icon(Icons.add),)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
        
             // here is end
            ],
          ),
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