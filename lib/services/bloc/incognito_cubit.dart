import 'package:flutter_bloc/flutter_bloc.dart';

class IncognitoCubit extends Cubit<IncognitoState> {
  IncognitoCubit() : super(IncognitoState(isExpanded: true));

  void toggleSize() {
    final isExpanded = !state.isExpanded;
    emit(IncognitoState(isExpanded: isExpanded));
  }
}

class IncognitoState {
  final bool isExpanded;

  IncognitoState({required this.isExpanded});
}
