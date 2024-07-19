import 'dart:math';

extension ListExtensions<E> on List<E>{
  E get random => _random();

  E _random(){
    final random = Random();
    return elementAt(random.nextInt(length));
  }
}