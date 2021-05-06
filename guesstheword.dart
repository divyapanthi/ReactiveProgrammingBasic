import 'dart:html';
// import 'dart:async';

void main() {
   final ButtonElement? button = querySelector('button') as ButtonElement;

    final InputElement? input = querySelector('input') as InputElement;
  
  final secretWord = 'cake';

  button!.onClick
    .take(4)
    .where((event) => input!.value == secretWord)
    .listen((data){
      print("Yay! you guessed it right.");
    },
    onDone: (){
      print("Game over");
    }
   );
}
