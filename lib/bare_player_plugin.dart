import 'bare_player_plugin_platform_interface.dart';

class BarePlayerPlugin {
  Future<void> play({required String url}) async {
    return BarePlayerPluginPlatform.instance.play(url: url);
  }

  void setUpStateListener(
      {required void Function(String) onPlaybackStateChanged,
      required void Function(String) onIsPlayingChanged,
      required void Function(String) onUrlChanged,
      required void Function(String) onLicenseKeyAvailable}) {
    BarePlayerPluginPlatform.instance.setUpStateListener(
        onPlaybackStateChanged: onPlaybackStateChanged,
        onUrlChanged: onUrlChanged,
        onIsPlayingChanged: onIsPlayingChanged,
        onKeyAvailable: onLicenseKeyAvailable);
  }

  Future<void> playDRMOnline(
      {required String url, required String licenseUrl}) async {
    return BarePlayerPluginPlatform.instance
        .playDRMOnline(url: url, licenseUrl: licenseUrl);
  }

  Future<void> playDRMOffline(
      {required String url,
      required String licenseUrl,
      required String licenseKey}) async {
    return BarePlayerPluginPlatform.instance
        .playDRMOffline(url: url, licenseUrl: licenseUrl, key: licenseKey);
  }

  Future<void> stop() {
    return BarePlayerPluginPlatform.instance.stop();
  }
}