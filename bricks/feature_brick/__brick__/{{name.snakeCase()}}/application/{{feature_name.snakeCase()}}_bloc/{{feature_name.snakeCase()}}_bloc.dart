import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';

class {{plugin_name.pascalCase()}}Bloc extends Bloc<{{plugin_name.pascalCase()}}Event, {{plugin_name.pascalCase()}}State> {
  {{plugin_name.pascalCase()}}Bloc() : super({{plugin_name.pascalCase()}}Initial()) {
    on<{{plugin_name.pascalCase()}}Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
