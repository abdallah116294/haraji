import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haraji/domain/usecase/message_usecase.dart';
part 'get_message_state.dart';

class GetMessageCubit extends Cubit<GetMessageState> {
  GetMessageCubit({required this.getMessageUseCase})
      : super(GetMessageInitial());
  GetMessageUseCase getMessageUseCase;
  Future<void> getMessage() async {
    emit(GetMessageLoadingState());
    try {
      var message = await getMessageUseCase.call();
      emit(GetMessageLoadedstate(messageEntity: message));
    } catch (error) {
      emit(GetMessageErrorState());
    }
  }
}
