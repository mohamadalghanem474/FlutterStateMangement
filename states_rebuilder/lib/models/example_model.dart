class ExampleModel {
  final int count;

  ExampleModel({required this.count});

  ExampleModel copyWith({int? count}) {
    return ExampleModel(
      count: count ?? this.count,
    );
  }
}
