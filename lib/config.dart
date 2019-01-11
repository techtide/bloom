library bloom.config;
import 'package:audioplayers/audioplayers.dart';

enum PlayerState { stopped, playing, paused }

var playerState = PlayerState.stopped;
var country = "All";

var pauseLocation;

var playlist = [];

AudioPlayer player = new AudioPlayer();