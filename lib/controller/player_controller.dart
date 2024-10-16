import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class PlayerController extends GetxController {
  final audioQuery = OnAudioQuery();
  final audioPlayer = AudioPlayer();

  var playIndex = 0.obs;
  var isPalying = false.obs;

  void onInint() {
    super.onInit();

    checkPermission();
  }

  PlaySong(String? uri, index) {
    playIndex.value = index;
    try {
      audioPlayer.setAudioSource(
        AudioSource.uri(
          Uri.parse(uri!),
        ),
      );
      audioPlayer.play();
      isPalying(true);
    } on Exception catch (e) {
      print(
        e.toString(),
      );
    }
  }
}

checkPermission() async {
  var perm = await Permission.storage.request();
  if (perm.isGranted) {
  } else {
    checkPermission();
  }
}
