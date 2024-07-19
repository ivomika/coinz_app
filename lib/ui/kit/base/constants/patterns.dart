import 'package:coinz_app/utils/extensions/list_extensions.dart';

enum Patterns{
  first('assets/svg/patterns/pattern_1.svg', 'first'),
  second('assets/svg/patterns/pattern_2.svg', 'second'),
  third('assets/svg/patterns/pattern_3.svg', 'third'),
  fourth('assets/svg/patterns/pattern_4.svg', 'fourth'),
  fifth('assets/svg/patterns/pattern_5.svg', 'fifth');

  static Patterns get random => _random();

  final String path;
  final String label;

  const Patterns(this.path, this.label);

  static Patterns _random() {
    return Patterns.values.random;
  }
}