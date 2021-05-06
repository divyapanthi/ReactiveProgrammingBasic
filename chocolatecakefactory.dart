import 'dart:async';

void main(){
  final controller = StreamController();
  
  // add an order
  
  Order order = Order('chocolate');
  controller.sink.add(order);
  
  //create a baker
  final baker = StreamTransformer.fromHandlers(
    handleData: (type, sink){
      if(type == 'vanila'){
        sink.add(Cake());
      }
      else{
        sink.addError('We can only bake chocolate cake');
      }
    }
  );
  
  
  controller.stream
    .map((order) => order.type)
    .transform(baker)
    .listen((data){
    print("got the data $data");
  }, onError:(err){
        print("Error $err");
  },);
  
}

class Order{
  String type;
  
  Order(this.type);
}


class Cake{
  
  
  
}
