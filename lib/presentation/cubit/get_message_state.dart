part of 'get_message_cubit.dart';

sealed class GetMessageState extends Equatable {
  const GetMessageState();

  @override
  List<Object> get props => [];
}

final class GetMessageInitial extends GetMessageState {}

final class GetMessageLoadingState extends GetMessageState {}

final class GetMessageLoadedstate extends GetMessageState {
  final List messageEntity;
  GetMessageLoadedstate({required this.messageEntity});
}

final class GetMessageErrorState extends GetMessageState {}
