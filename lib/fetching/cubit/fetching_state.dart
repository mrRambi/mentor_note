part of 'fetching_cubit.dart';

@immutable
abstract class FetchingState {}

class FetchingInitial extends FetchingState {}

class FetchingInProgress extends FetchingState {}

class FetchingComplete extends FetchingState {
  final List<Note> listOfNote;
  FetchingComplete(this.listOfNote);
}

class FetchingError extends FetchingState {}
