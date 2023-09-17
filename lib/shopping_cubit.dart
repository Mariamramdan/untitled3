import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'shopping_state.dart';

class ShoppingCubit extends Cubit<ShoppingState> {
  ShoppingCubit() : super(ShoppingInitial());
  static ShoppingCubit get(context) => BlocProvider.of(context);

  static double total = 0.0 ;
  double getTotal(){
    return total;
  }

  void changeTotal(double price){
    total += price;
    emit(ChangePriceState());
  }


}
