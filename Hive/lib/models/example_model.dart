import 'package:hive/hive.dart';

part 'example_model.g.dart';

@HiveType(typeId: 0)
class ExampleModel extends HiveObject {
  @HiveField(0)
  int count;

  ExampleModel({required this.count});

  void increment() {
    count++;
    save();
  }

  void decrement() {
    count--;
    save();
  }
}
