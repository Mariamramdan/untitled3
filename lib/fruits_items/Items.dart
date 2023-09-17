import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/shopping_cubit.dart';

class FruitsItems extends StatefulWidget {
  final String text1 ;
  late String text2 ;
  late double price ;
  late String image ;
  FruitsItems(this.text1 ,this.text2 ,this.price, this.image);

  @override
  State<FruitsItems> createState() => _FruitsItemsState();
}

class _FruitsItemsState extends State<FruitsItems> {
  bool _isTap = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShoppingCubit, ShoppingState>(
      builder: (BuildContext context, state) {
        var cubit = ShoppingCubit.get(context);
        return
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade50),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 5, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.favorite,
                        color: _isTap ? Colors.red:Colors.grey),
                    onPressed: () {
                      setState(() {
                        _isTap = !_isTap;
                      });
                    },),
                ),
                Image.asset(widget.image,height: 50,width: 40,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                  child: Text(widget.text1 ,style: const TextStyle(
                      fontWeight: FontWeight.bold
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 5, 0, 0),
                  child: Text(widget.text2 ,style: const TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.bold
                  )),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                          child: Text("\$" ,style: TextStyle(
                              color: Colors.green[400],
                              fontWeight: FontWeight.bold
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                          child:
                          Text(widget.price.toString() ,style: TextStyle(
                              color: Colors.green[400],
                              fontWeight: FontWeight.bold
                          )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(46, 0, 0, 0),
                      child: Container(
                        height: 55,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(5),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                              cubit.changeTotal(widget.price);
                          },
                          color: Colors.white,
                          iconSize: 20,
                          icon: const Icon(
                            Icons.add,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );

      },
      listener: (BuildContext context, Object? state) {  },
    )
    ;
  }
}
