import 'package:bloc/bloc.dart';
import 'package:mentor_note/remote_data/model/note.dart';
import 'package:meta/meta.dart';

import '../../remote_data/remote_data.dart';

part 'fetching_state.dart';

class FetchingCubit extends Cubit<FetchingState> {
  FetchingCubit(this.apiNote) : super(FetchingInitial());

  final NoteApi apiNote;

  void fetchDataCubit() async {
    try {
      emit(FetchingInProgress());
      final fetchedJson = await apiNote.fetchData();
      emit(FetchingComplete(fetchedJson));
    } catch (e) {
      emit(FetchingError());
    }
  }
}
