part of 'app_update_checker_bloc.dart';

abstract class AppUpdateCheckerEvent extends Equatable {
  const AppUpdateCheckerEvent();

  @override
  List<Object> get props => [];
}

class AppUpdateCheckerEventStarted extends AppUpdateCheckerEvent {
  const AppUpdateCheckerEventStarted();
}
