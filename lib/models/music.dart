Track currentSelectedTrack = new Track("https://api.soundcloud.com/tracks/96188366/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", 10, "Ain't Misbehavin", "Fats Weller");

class Track {
  String url;
  String title;
  String author;
  dynamic ageYear;

  Track(String url, dynamic ageYear, String title, String author) {
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
    {"title": "Ain't Misbehavin",  "url":  "https://api.soundcloud.com/tracks/96188366/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Fats Weller",  "ageYear":  1920 },
    {"title": "Dark was the night", "url":  "https://api.soundcloud.com/tracks/96188366/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Blind Willie Johnson", "ageYear":  1920 },
    {"title": "Down Hearted Blues", "url":  "https://api.soundcloud.com/tracks/135758251/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Bessie Smith", "ageYear":  1920 },
    {"title": "In the Jailhouse Now", "url":  "https://api.soundcloud.com/tracks/238012819/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Jimmie Rodgers",  "ageYear":  1920 },
    {"title": "Makin’ Whoopee!", "url":  "https://api.soundcloud.com/tracks/301296241/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Bing Crosby", "ageYear": 1920},


    // 1930
    {"title": "In the Mood", "url": "https://api.soundcloud.com/tracks/1648392/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Glenn Miller",  "ageYear":  1930 },
    {"title": "Over The Rainbow", "url": "https://api.soundcloud.com/tracks/58566455/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Judy Garland" , "ageYear":  1930 },
    {"title": "God Bless America", "url": "https://api.soundcloud.com/tracks/254198178/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author" :  "Kate Smith", "ageYear":  1930 },
    {"title": "Sing Sing Sing (With a Swing)","url":  "https://api.soundcloud.com/tracks/39189881/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Benny Goodman", "ageYear":  1930 },
    {"title": "Silent Night, Holy Night", "url": "https://api.soundcloud.com/tracks/393732264/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author": "Bing Crosby", "ageYear":  1930 },


    // 1940
    {"title":  "White Christmas", "url": "https://api.soundcloud.com/tracks/30815780/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Bing Crosby" ,  "ageYear":  1940 },
    {"title":  "The Christmas Song", "url":  "https://api.soundcloud.com/tracks/181371268/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P" , "author": "Nat  King  Cole", "ageYear":  1940 },
    {"title":  "God Bless the Child", "url":  "https://api.soundcloud.com/tracks/53709132/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Billie Holiday",  "ageYear":  1940 },
    {"title":  "Take the A Train",  "url":  "https://api.soundcloud.com/tracks/167314054/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Duke Ellington",  "ageYear":  1940 },
    {"title":  "Star Dust",  "url": "https://api.soundcloud.com/tracks/297259559/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Artie Shaw" ,  "ageYear" :  1940 },


// 1950
    {"title": "That’s Amore", "url": "https://api.soundcloud.com/tracks/12112157/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author": "Dean Martin" ,  "ageYear":  1950 },
    {"title": "Come Fly With Me", "url": "https://api.soundcloud.com/tracks/141257734/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Frank Sinatra", "ageYear":  1950 },
    {"title": "Jailhouse Rock", "url":  "https://api.soundcloud.com/tracks/41575330/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Elvis Presley", "ageYear":  1950 },
    {"title": "I Walk The Line", "url": "https://api.soundcloud.com/tracks/68892719/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Johnny Cash", "ageYear":  1950 },
    {"title": "I ve Got You Under My Skin", "url": "https://api.soundcloud.com/tracks/111613252/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Frank Sinatra", "ageYear":  1950 },
    
    // 1960
    {"title": "Sweet Caroline", "url":  "https://api.soundcloud.com/tracks/253089074/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Neil Diamond", "ageYear":  1960 },
    {"title": "Shout",  "url":  "https://api.soundcloud.com/tracks/527214093/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Isley Brothers", "ageYear":  1960 },
    {"title": "Brown Eyed Girl",  "url":  "https://api.soundcloud.com/tracks/11814201/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Van Morrison",  "ageYear":  1960 },
    {"title": "The Way You Look Tonight",  "url":  "https://api.soundcloud.com/tracks/28345912/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Frank Sinatra",  "ageYear":  1960 },
    {"title": "Twist And Shout",  "url":  "https://api.soundcloud.com/tracks/46619076/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "The Beatles",  "ageYear":  1960 },
    
    // 1970
    {"title":  "No Woman, No cry", "url" :  "https://api.soundcloud.com/tracks/84631702/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author" :  "Bob Marley",  "ageYear" :  1970 },
    {"title":  "Big Yellow Taxi",  "url":  "https://api.soundcloud.com/tracks/204560824/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author" :  "Joni Mitchell",  "ageYear":  1970 },
    {"title":  "Bohemian Rhapsody", "url" :  "https://api.soundcloud.com/tracks/115417954/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author" :  "Queen", "ageYear":  1970 },
    {"title":  "Stayin’ Alive",  "url" :  "https://api.soundcloud.com/tracks/67283900/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author" :  "Bee Gees" , "ageYear":  1970 },
    {"title":  "Dancing Queen",  "url" :  "https://api.soundcloud.com/tracks/187768173/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author" :  "ABBA" ,  "ageYear":  1970 },
  ];
  
  List<Map<String, dynamic>> getTracks() {
    return tracks;
  }

  List<Map<String, dynamic>> getFilteredTracks(String filter, String textBox) {
    List<Map<String, dynamic>>  _filtered = new List<Map<String, dynamic>>();
    if(filter != null && filter != "" && textBox != "") {
      for (var item in getTracks()) {
        if(item["ageYear"] == int.parse(filter)) {
          _filtered.add(item);
        }
      }
      return _filtered;
    }
    return getTracks();
  }
}