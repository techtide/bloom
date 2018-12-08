Track currentSelectedTrack = new Track(Tracks().getTracks()[0]["url"], int.parse(Tracks().getTracks()[0]["ageYear"]), Tracks().getTracks()[0]["title"], Tracks().getTracks()[0]["author"]);

class Track {
  String url;
  String title;
  String author;
  int ageYear;

  Track(String url, int ageYear, String title, String author) {
    this.url = url;
    this.ageYear = ageYear;
    this.title = title;
    this.author = author;
  }
}

// Need 5 tracks for 1920, 1930, 1940, 1950, 1960, 1970, 1980
class Tracks {
  final List<Map<String, dynamic>> tracks = [
    // 1920
    {"title": "Ain't Misbehavin", "author": "Fats Weller", "url": 'https://api.soundcloud.com/tracks/96188366/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P', "ageYear": '1920'},
    {"title": "", "url": '', "author": "","ageYear": '1920'},
    {"title": "", "url": '', "author": "","ageYear": '1920'},
    {"title": "", "url": '', "author": "","ageYear": '1920'},
    {"title": "", "url": '', "author": "","ageYear": '1920'},
    // 1930
    {"title": "", "url": '', "author": "","ageYear": '1930'},
    {"title": "", "url": '', "author": "","ageYear": '1930'},
    {"title": "", "url": '',"author": "", "ageYear": '1930'},
    {"title": "", "url": '',"author": "", "ageYear": '1930'},
    {"title": "", "url": '', "author": "","ageYear": '1930'},
    // 1940
    {"title": "", "url": '', "author": "","ageYear": '1940'},
    {"title": "", "url": '',"author": "", "ageYear": '1940'},
    {"title": "", "url": '', "author": "","ageYear": '1940'},
    {"title": "", "url": '',"author": "", "ageYear": '1940'},
    {"title": "", "url": '', "author": "","ageYear": '1940'},
    // 1950
    {"title": "", "url": '',"author": "", "ageYear": '1950'},
    {"title": "", "url": '',"author": "", "ageYear": '1950'},
    {"title": "", "url": '',"author": "", "ageYear": '1950'},
    {"title": "", "url": '',"author": "", "ageYear": '1950'},
    {"title": "", "url": '', "author": "","ageYear": '1950'},
    // 1960
    {"title": "", "url": '',"author": "", "ageYear": '1960'},
    {"title": "", "url": '',"author": "", "ageYear": '1960'},
    {"title": "", "url": '',"author": "", "ageYear": '1960'},
    {"title": "", "url": '',"author": "", "ageYear": '1960'},
    {"title": "", "url": '',"author": "", "ageYear": '1960'},
    // 1970
    {"title": "", "url": '',"author": "", "ageYear": '1970'},
    {"title": "", "url": '',"author": "", "ageYear": '1970'},
    {"title": "", "url": '',"author": "", "ageYear": '1970'},
    {"title": "", "url": '',"author": "", "ageYear": '1970'},
    {"title": "", "url": '',"author": "", "ageYear": '1970'},
    // 1980
    {"title": "", "url": '',"author": "", "ageYear": '1980'},
    {"title": "", "url": '',"author": "", "ageYear": '1980'},
    {"title": "", "url": '',"author": "", "ageYear": '1980'},
    {"title": "", "url": '',"author": "", "ageYear": '1980'},
    {"title": "", "url": '',"author": "", "ageYear": '1980'},
  ];
  
  List<Map<String, dynamic>> getTracks() {
    return tracks;
  }
}