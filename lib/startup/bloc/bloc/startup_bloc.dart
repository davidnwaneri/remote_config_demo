import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_config_demo/utils/app_logger.dart';

part 'startup_event.dart';
part 'startup_state.dart';
part 'startup_bloc.freezed.dart';

/// This class is used to mock a delay in the startup process,
/// to simulate a when some background process is taking place.
///
/// Background process could include but is not limited to:
/// - Fetching some configuration stored on the device e.g. user credentials
/// - Checiking if the user has completed onboarding to avoid showing it again.
class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc() : super(const _Initial()) {
    on<StartupEventStarted>(_onStartupEventStarted);
    add(const StartupEventStarted());
  }

  Future _onStartupEventStarted(
    StartupEventStarted event,
    Emitter<StartupState> emit,
  ) async {
    emit(const _Loading());
    'Mock startup check in progress...'.log();
    await Future<void>.delayed(const Duration(seconds: 2));
    emit(const _Loaded());
    'Mock startup check complete.'.log();
  }
}
