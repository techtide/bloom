Track currentSelectedTrack;

class Track {
  String url;
  int ageYear;

  Track(String url, int ageYear) {
    this.url = url;
    this.ageYear = ageYear;
  }
}

// Need 5 tracks for 1920, 1930, 1940, 1950, 1960, 1970, 1980
class Tracks {
  final List<Map<String, dynamic>> tracks = [
    // 1920
    {"title": "Ain't Misbehavin - Fats Weller", "url": 'https://api.soundcloud.com/tracks/96188366/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P', "ageYear": '1920'},
    {"title": "", "url": '', "ageYear": '1920'},
    {"title": "", "url": '', "ageYear": '1920'},
    {"title": "", "url": '', "ageYear": '1920'},
    {"title": "", "url": '', "ageYear": '1920'},
    // 1930
    {"title": "", "url": '', "ageYear": '1930'},
    {"title": "", "url": '', "ageYear": '1930'},
    {"title": "", "url": '', "ageYear": '1930'},
    {"title": "", "url": '', "ageYear": '1930'},
    {"title": "", "url": '', "ageYear": '1930'},
    // 1940
    {"title": "", "url": '', "ageYear": '1940'},
    {"title": "", "url": '', "ageYear": '1940'},
    {"title": "", "url": '', "ageYear": '1940'},
    {"title": "", "url": '', "ageYear": '1940'},
    {"title": "", "url": '', "ageYear": '1940'},
    // 1950
    {"title": "", "url": '', "ageYear": '1950'},
    {"title": "", "url": '', "ageYear": '1950'},
    {"title": "", "url": '', "ageYear": '1950'},
    {"title": "", "url": '', "ageYear": '1950'},
    {"title": "", "url": '', "ageYear": '1950'},
    // 1960
    {"title": "", "url": '', "ageYear": '1960'},
    {"title": "", "url": '', "ageYear": '1960'},
    {"title": "", "url": '', "ageYear": '1960'},
    {"title": "", "url": '', "ageYear": '1960'},
    {"title": "", "url": '', "ageYear": '1960'},
    // 1970
    {"title": "", "url": '', "ageYear": '1970'},
    {"title": "", "url": '', "ageYear": '1970'},
    {"title": "", "url": '', "ageYear": '1970'},
    {"title": "", "url": '', "ageYear": '1970'},
    {"title": "", "url": '', "ageYear": '1970'},
    // 1980
    {"title": "", "url": '', "ageYear": '1980'},
    {"title": "", "url": '', "ageYear": '1980'},
    {"title": "", "url": '', "ageYear": '1980'},
    {"title": "", "url": '', "ageYear": '1980'},
    {"title": "", "url": '', "ageYear": '1980'},
  ];
  
  List<Map<String, dynamic>> getTracks() {
    return tracks;
  }
}