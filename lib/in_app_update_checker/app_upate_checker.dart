
abstract class IAppUpdateChecker {
}

abstract class IAndroidAppUpdateChecker implements IAppUpdateChecker {
}

abstract class IIOSAppUpdateChecker implements IAppUpdateChecker {
}

class AndrioAppUpdateCheckerWithRemoteConfig implements IAndroidAppUpdateChecker {
}

class IOSAppUpdateCheckerWithRemoteConfig implements IIOSAppUpdateChecker {
}