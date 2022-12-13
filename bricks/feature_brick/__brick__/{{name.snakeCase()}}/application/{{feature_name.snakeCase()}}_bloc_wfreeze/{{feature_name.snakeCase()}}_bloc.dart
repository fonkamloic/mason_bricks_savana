import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name.snakeCase()}}_event.dart';
part '{{feature_name.snakeCase()}}_state.dart';
part '{{feature_name.snakeCase()}}_bloc.freezed.dart';

class {{plugin_name.pascalCase()}}Bloc extends Bloc<{{plugin_name.pascalCase()}}Event, {{plugin_name.pascalCase()}}State> {
  {{plugin_name.pascalCase()}}Bloc() : super(_Initial()) {
    on<{{plugin_name.pascalCase()}}Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
