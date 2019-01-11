library bloom.config;
import 'package:audioplayers/audioplayers.dart';
import 'package:bloom/models/music.dart';

enum PlayerState { stopped, playing, paused }

var playerState = PlayerState.stopped;
var country = "All";

var pauseLocation;

List<Track> playlist = [];

AudioPlayer player = new AudioPlayer();