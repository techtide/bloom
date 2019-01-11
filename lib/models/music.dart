import 'package:bloom/config.dart' as config;

Track currentSelectedTrack = new Track("https://api.soundcloud.com/tracks/96188366/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", 10, "Ain't Misbehavin", "Fats Weller", "https://images-na.ssl-images-amazon.com/images/I/81wW2UTy7xL._SL1500_.jpg");

class Track {
  String url;
  String title;
  String author;
  dynamic ageYear;
  String imageURL;

  Track(String url, dynamic ageYear, String title, String author, String imageURL) {
    this.url = url;
    this.ageYear = ageYear;
    this.title = title;
    this.author = author;
    this.imageURL = imageURL;
  }
}

// Need 5 tracks for 1920, 1930, 1940, 1950, 1960, 1970, 1980
class Tracks {
  final List<Map<String, dynamic>> tracks_US_UK = [
    // 1920
    {"title": "Ain't Misbehavin",  "url":  "https://api.soundcloud.com/tracks/96188366/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Fats Weller",  "ageYear":  1920, "image": "https://images-na.ssl-images-amazon.com/images/I/81wW2UTy7xL._SL1500_.jpg"},
    {"title": "Dark was the night", "url":  "https://api.soundcloud.com/tracks/96188366/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Blind Willie Johnson", "ageYear":  1920, "image": "http://nodepression.com/sites/default/files/styles/xlarge/public/images/main_image/ning_blog/BlindWillieJohnsonpic.jpg?itok=dQ1rXos1" },
    {"title": "Down Hearted Blues", "url":  "https://api.soundcloud.com/tracks/135758251/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Bessie Smith", "ageYear":  1920, "image": "https://upload.wikimedia.org/wikipedia/en/4/48/Down_Hearted_Blues_sheet_music_cover.jpg"},
    {"title": "In the Jailhouse Now", "url":  "https://api.soundcloud.com/tracks/238012819/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Jimmie Rodgers",  "ageYear":  1920, "image": "https://img.songfacts.com/art/artists/7538be49357ebee708bb0926dc2a1ecd.png" },
    {"title": "Makin’ Whoopee!", "url":  "https://api.soundcloud.com/tracks/301296241/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Bing Crosby", "ageYear": 1920, "image": "https://img.songfacts.com/art/artists/7538be49357ebee708bb0926dc2a1ecd.png"},


    // 1930
    {"title": "In the Mood", "url": "https://api.soundcloud.com/tracks/1648392/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Glenn Miller",  "ageYear":  1930, "image": "https://upload.wikimedia.org/wikipedia/en/thumb/d/da/In_the_mood_sheet_music_glenn_miller.jpg/220px-In_the_mood_sheet_music_glenn_miller.jpg"},
    {"title": "Over The Rainbow", "url": "https://api.soundcloud.com/tracks/58566455/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Judy Garland" , "ageYear":  1930, "image": "https://images-na.ssl-images-amazon.com/images/I/511eI1RaZcL._SS500.jpg"},
    {"title": "God Bless America", "url": "https://api.soundcloud.com/tracks/254198178/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author" :  "Kate Smith", "ageYear":  1930, "image": "https://images-na.ssl-images-amazon.com/images/I/51FtFFfk4DL._SY355_.jpg" },
    {"title": "Sing Sing Sing (With a Swing)","url":  "https://api.soundcloud.com/tracks/39189881/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Benny Goodman", "ageYear":  1930, "image": "https://img.songfacts.com/art/artists/7538be49357ebee708bb0926dc2a1ecd.png" },
    {"title": "Silent Night, Holy Night", "url": "https://api.soundcloud.com/tracks/393732264/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author": "Bing Crosby", "ageYear":  1930, "image": "https://i.scdn.co/image/5e19f6d38306a096686d0c619b5f7a1861c6197a" },


    // 1940
    {"title":  "White Christmas", "url": "https://api.soundcloud.com/tracks/30815780/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Bing Crosby" ,  "ageYear":  1940, "image": "https://upload.wikimedia.org/wikipedia/en/thumb/3/36/Single_Bing_Crosby_-_White_Christmas_cover.jpg/200px-Single_Bing_Crosby_-_White_Christmas_cover.jpg" },
    {"title":  "The Christmas Song", "url":  "https://api.soundcloud.com/tracks/181371268/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P" , "author": "Nat  King  Cole", "ageYear":  1940, "image": "https://img.discogs.com/MhmrGV8uvn9I6qxquj0Sa5hHXGg=/fit-in/600x599/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-2641202-1294577363.jpeg.jpg" },
    {"title":  "God Bless the Child", "url":  "https://api.soundcloud.com/tracks/53709132/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Billie Holiday",  "ageYear":  1940, "image": "https://images-na.ssl-images-amazon.com/images/I/51BCYyD2vgL._SY355_.jpg"},
    {"title":  "Take the A Train",  "url":  "https://api.soundcloud.com/tracks/167314054/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Duke Ellington",  "ageYear":  1940, "image": "https://vignette.wikia.nocookie.net/skyferreira/images/1/10/God_Bless_the_Child.jpg/revision/latest?cb=20130915223401" },
    {"title":  "Star Dust",  "url": "https://api.soundcloud.com/tracks/297259559/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Artie Shaw" ,  "ageYear" :  1940, "image": "https://images-na.ssl-images-amazon.com/images/I/51n-AhsAiRL._SY355_.jpg" },


// 1950
    {"title": "That’s Amore", "url": "https://api.soundcloud.com/tracks/12112157/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author": "Dean Martin" ,  "ageYear":  1950, "image":"https://i.ytimg.com/vi/yUPbA7RFhkU/hqdefault.jpg" },
    {"title": "Come Fly With Me", "url": "https://api.soundcloud.com/tracks/141257734/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Frank Sinatra", "ageYear":  1950,"image":"https://upload.wikimedia.org/wikipedia/en/thumb/9/96/Dean_Mart..jpg/220px-Dean_Mart..jpg" },
    {"title": "Jailhouse Rock", "url":  "https://api.soundcloud.com/tracks/41575330/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Elvis Presley", "ageYear":  1950, "image":"https://upload.wikimedia.org/wikipedia/en/thumb/d/d0/Come_Fly_with_Me_%28Frank_Sinatra_album%29.jpg/220px-Come_Fly_with_Me_%28Frank_Sinatra_album%29.jpg" },
    {"title": "I Walk The Line", "url": "https://api.soundcloud.com/tracks/68892719/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Johnny Cash", "ageYear":  1950, "image": "https://images-na.ssl-images-amazon.com/images/I/919Ct8kg4fL._SX425_.jpg" }, 
    {"title": "I ve Got You Under My Skin", "url": "https://api.soundcloud.com/tracks/111613252/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Frank Sinatra", "ageYear":  1950, "image":"https://t2.genius.com/unsafe/220x220/https%3A%2F%2Fimages.genius.com%2F4fbdabfca2b97d422aaacc388b4aca65.640x640x1.jpg" },
    
    // 1960
    {"title": "Sweet Caroline", "url":  "https://api.soundcloud.com/tracks/253089074/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Neil Diamond", "ageYear":  1960, "image":"https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/Sweet_Caroline_cover.jpg/220px-Sweet_Caroline_cover.jpg" },
    {"title": "Shout",  "url":  "https://api.soundcloud.com/tracks/527214093/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Isley Brothers", "ageYear":  1960, "image":"http://images.45cat.com/frank-sinatra-ive-got-you-under-my-skin-1983-s.jpg" },
    {"title": "Brown Eyed Girl",  "url":  "https://api.soundcloud.com/tracks/11814201/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author":  "Van Morrison",  "ageYear":  1960, "image":"https://images-na.ssl-images-amazon.com/images/I/51L9aWPpweL._SY355_.jpg" },
    {"title": "The Way You Look Tonight",  "url":  "https://api.soundcloud.com/tracks/28345912/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "Frank Sinatra",  "ageYear":  1960, "image":"https://upload.wikimedia.org/wikipedia/en/thumb/d/d5/BrownEyedGirl.jpg/220px-BrownEyedGirl.jpg" },
    {"title": "Twist And Shout",  "url":  "https://api.soundcloud.com/tracks/46619076/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author":  "The Beatles",  "ageYear":  1960, "image":"https://images-na.ssl-images-amazon.com/images/I/51L9aWPpweL._SY355_.jpg" },
    
    // 1970
    {"title":  "No Woman, No cry", "url" :  "https://api.soundcloud.com/tracks/84631702/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author" :  "Bob Marley",  "ageYear" :  1970, "image":"https://images-na.ssl-images-amazon.com/images/I/51L9aWPpweL._SY355_.jpg" },
    {"title":  "Big Yellow Taxi",  "url":  "https://api.soundcloud.com/tracks/204560824/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author" :  "Joni Mitchell",  "ageYear":  1970, "image":"https://t2.genius.com/unsafe/221x220/https%3A%2F%2Fimages.genius.com%2Fb27958513ccf7af5ddf6e61df745737a.288x287x1.jpg" },
    {"title":  "Bohemian Rhapsody", "url" :  "https://api.soundcloud.com/tracks/115417954/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author" :  "Queen", "ageYear":  1970, "image":"https://upload.wikimedia.org/wikipedia/en/thumb/6/61/BeatlesTwistanShoutSingle.jpg/220px-BeatlesTwistanShoutSingle.jpg" },
    {"title":  "Stayin’ Alive",  "url" :  "https://api.soundcloud.com/tracks/67283900/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author" :  "Bee Gees" , "ageYear":  1970, "image":"https://img.discogs.com/Yz23arsmSY0i6vqyF3w7KDd-8Vs=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/R-2385120-1280933141.jpeg.jpg" },
    {"title":  "Dancing Queen",  "url" :  "https://api.soundcloud.com/tracks/187768173/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P",  "author" :  "ABBA" ,  "ageYear":  1970, "image": "https://upload.wikimedia.org/wikipedia/en/thumb/e/ef/ABBA_-_Dancing_Queen.png/220px-ABBA_-_Dancing_Queen.png"},
  ];

  final List<Map<String, dynamic>> tracks_INDIA = [];

  final List<Map<String, dynamic>> tracks_JAPAN = [];

  final List<Map<String, dynamic>> tracks_CHINA = [
    {"title": "The Moon Represents My Heart", "url": "https://api.soundcloud.com/tracks/146796808/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Teresa Teng", "ageYear":"1970", "image": "https://i1.sndcdn.com/artworks-000111252552-yxjb9s-t500x500.jpg"},


    {"title": "The Wandering Songstress", "url": "https://api.soundcloud.com/tracks/95032461/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Zhou Xuan", "ageYear":"1940", "image": "https://direct.rhapsody.com/imageserver/images/Alb.80832664/500x500.jpg"},


    {"title": "Shanghai Nights", "url": "https://api.soundcloud.com/tracks/547447575/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Wu Yingyin", "ageYear":"1960", "image": "https://lastfm-img2.akamaized.net/i/u/avatar300s/9f93fa7759dd47fd9ab3896eeee33196.jpg"},


    {"title": "Give Me a Kiss", "url": "https://api.soundcloud.com/tracks/22860672/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": " Zhang Lu", "ageYear":"1950", "image": "https://lastfm-img2.akamaized.net/i/u/avatar300s/f516c971ad6648d4a5b88506c6dbf5c5.jpg"},


    {"title": "Rose, Rose, I Love You", "url": "https://api.soundcloud.com/tracks/256559802/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Yao Li", "ageYear":"1940", "image": "https://lastfm-img2.akamaized.net/i/u/avatar300s/f516c971ad6648d4a5b88506c6dbf5c5.jpg"},


    {"title": "The Spring Breeze Kisses My Face", "url": "https://api.soundcloud.com/tracks/256559751/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Yao Li", "ageYear":"1960", "image": "https://images.shazam.com/coverart/t223469103-i1057615682_s400.jpg"},


    {"title": "I Want Your Love", "url": "https://api.soundcloud.com/tracks/289795498/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Ge Lan", "ageYear":"1950", "image": "https://images.shazam.com/coverart/t40655796-b730891116_s400.jpg"},


    {"title": "The Pretender", "url": "https://api.soundcloud.com/tracks/253354836/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Bai Guang", "ageYear":"1950", "image": "https://alchetron.com/cdn/bai-guang-e8a5bdc2-3df8-418c-a70a-0ff52e9f5e3-resize-750.jpeg"},

    
    {"title": "Silence is Golden", "url": "https://api.soundcloud.com/tracks/148119531/stream?secret_token=s-tj3IS&client_id=LBCcHmRB8XSStWL6wKH2HPACspQlXg2P", "author": "Leslie Cheung", "ageYear": "1990", "image": "https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/LeslieCheung1988HotSummer.jpg/220px-LeslieCheung1988HotSummer.jpg"},
  ];
  
  List<Map<String, dynamic>> getTracks(String country) {
    if (country == "United Kingdom" || country == "United States") {
      return tracks_US_UK;
    } else if (country == "India") {
      return tracks_INDIA;
    } else if (country == "Japan") {
      return tracks_JAPAN;
    } else if (country == "China") {
      return tracks_CHINA;
    }
    return [tracks_US_UK, tracks_INDIA, tracks_JAPAN, tracks_CHINA].expand((x) => x).toList();
  }

  List<Map<String, dynamic>> getFilteredTracks(String filter, String textBox) {
    List<Map<String, dynamic>>  _filtered = new List<Map<String, dynamic>>();
    if(filter != null && filter != "" && textBox != "") {
      for (var item in getTracks(config.country)) {
        if(item["ageYear"] == int.parse(filter)) {
          _filtered.add(item);
        }
      }
      return _filtered;
    }
    return getTracks(config.country);
  }
}