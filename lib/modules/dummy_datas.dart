import 'package:netflix_clone/modules/modules.dart';

class DummyData {
  List<NetflixAccountName> netflixNames = [
    NetflixAccountName(
        names: "Charles",
        imgUrl:
            "https://i.insider.com/5cbdc6b666ae8f271d52ee95?width=1100&format=jpeg&auto=webp"),
    NetflixAccountName(
        names: "Lion West",
        imgUrl: "https://scx2.b-cdn.net/gfx/news/hires/2018/lion.jpg"),
    NetflixAccountName(
        names: "Ariwizzy",
        imgUrl:
            "https://miro.medium.com/max/700/1*jHCR_94Xae5KMtRgVb70jw.jpeg"),
    NetflixAccountName(
        names: "Arnold",
        imgUrl:
            "https://decider.com/wp-content/uploads/2020/04/extraction-1.jpg?quality=80&"),
    NetflixAccountName(
        names: "Jude",
        imgUrl:
            "https://pbs.twimg.com/profile_images/1062752395200004101/Z-vrQIEl.jpg"),
  ];
  List<NetflixAccountName> get accountName {
    return [...netflixNames];
  }
}
