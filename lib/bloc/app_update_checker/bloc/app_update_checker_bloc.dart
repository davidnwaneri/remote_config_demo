import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:remote_config_demo/model/app_update_info.dart';

part 'app_update_checker_event.dart';
part 'app_update_checker_state.dart';
part 'app_update_checker_bloc.freezed.dart';

class AppUpdateCheckerBlocBloc
    extends Bloc<AppUpdateCheckerEvent, AppUpdateCheckerState> {
  AppUpdateCheckerBlocBloc() : super(_Initial()) {
    on<AppUpdateCheckerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
