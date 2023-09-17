import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/shopping_cubit.dart';

import '../fruits_items/Items.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool _isTap = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(Icons.menu,color: Colors.grey,),
          title: const Center(child: Text('EDEKA' ,style:
          TextStyle(color: Colors.blue ,fontWeight: FontWeight.bold),)),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.next_plan,color: Colors.blue,),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.favorite,color: Colors.red,),
            )
          ],

          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.greenAccent,
            tabs: <Widget>[
              const Tab(
                icon: Icon(Icons.bakery_dining_rounded ,color: Colors.grey,size: 40,),
              ),
              Tab(
                icon: Image.asset("assets/vegetable.png",color: Colors.grey,
                ),
              ),
              Tab(
                icon: Image.asset("assets/harvest.png",color: Colors.grey,),
              ),

              Tab(
                icon: Image.asset("assets/milk.png",color: Colors.grey,),
              ),
            ],
          ),
        ),
        body: BlocConsumer<ShoppingCubit, ShoppingState>(
          builder: (BuildContext context, state) {
            var cubit = ShoppingCubit.get(context);
            return
              TabBarView(
              children: <Widget>[
                const Center(
                  child: Text("Bakery"),
                ),
                const Center(
                  child: Text("Vegetable"),
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FruitsItems("Lemon" ,"Bergamo Italy" ,1.01,"assets/lemon.png"),
                                FruitsItems("Banana" ,"Cattier Italiano" ,2.05,"assets/banana-fruit-calories-vitamin.png"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FruitsItems("Grape" ,"Cattier Italiano" ,3.15,"assets/grapes.png"),
                                FruitsItems("Orange" ,"Cattier Italiano" ,3.06,"assets/orange.png"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FruitsItems("Apple" ,"Bergamo Italy" ,3.04,"assets/apple.png"),
                                FruitsItems("strawberry" ,"Cattier Italiano" ,2.25,"assets/banana-fruit-calories-vitamin.png"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FruitsItems("watermelon" ,"Cattier Italiano" ,5.05,"assets/grapes.png"),
                                FruitsItems("pineapple" ,"Cattier Italiano" ,2.54,"assets/pineapple.png"),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade50),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Row(
                              children: [
                                const Text("Total:" , style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold
                                )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${cubit.getTotal()}" ,style: const TextStyle(
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(115, 0, 0, 0),
                                  child: Container(
                                    height: 55,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.grey.shade50),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("Cart" ,style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        )),
                                        Icon(Icons.shopping_cart_checkout_sharp,color: Colors.white)
                                      ],
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                        ),
                        // const Align(
                        //   alignment: Alignment.bottomCenter,
                        // )

                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade50),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          children: [
                            const Text("Total:" , style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.bold
                            )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("${cubit.getTotal()}" ,style: const TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(115, 0, 0, 0),
                              child: Container(
                                height: 55,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(color: Colors.grey.shade50),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Cart" ,style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    )),
                                    Icon(Icons.shopping_cart_checkout_sharp,color: Colors.white)
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    // const Align(
                    //   alignment: Alignment.bottomCenter,
                    // )

                  ],
                ),
                const Center(
                  child: Text("Milk"),
                ),
              ],
            );
          },
          listener: (BuildContext context, Object? state) {  },
        ),
      ),
    );
  }
}
