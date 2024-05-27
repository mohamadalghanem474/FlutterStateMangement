// riverpod/example_riverpod.dart

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/example_model.dart';

final exampleModelProvider = ChangeNotifierProvider<ExampleModel>((ref) => ExampleModel());
