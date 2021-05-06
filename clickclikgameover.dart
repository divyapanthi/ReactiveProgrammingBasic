import 'dart:html';
import 'dart:async';

void main() {
  final ButtonElement? button = querySelector('button') as ButtonElement;
  button!.onClick
   .timeout(
      Duration(seconds:1),
      onTimeout:(sink){
        sink.addError("Game over!");
      }
   )
    .listen(
  (data){
    print(data);
  },
    onError: (err){
      print(err);
    }
  );
}
