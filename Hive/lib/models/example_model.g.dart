// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExampleModelAdapter extends TypeAdapter<ExampleModel> {
  @override
  final int typeId = 0;

  @override
  ExampleModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExampleModel(
      count: fields[0] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ExampleModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.count);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExampleModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
