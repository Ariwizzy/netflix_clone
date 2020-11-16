import 'package:netflix_clone/modules/modules.dart';

class SearchDatas {
  List<SearchRequest> searchScreen = [
    SearchRequest(
        tittle: "Charles",
        imgUrl:
            "https://i.insider.com/5cbdc6b666ae8f271d52ee95?width=1100&format=jpeg&auto=webp"),
    SearchRequest(
        tittle: "Lion West",
        imgUrl: "https://scx2.b-cdn.net/gfx/news/hires/2018/lion.jpg"),
    SearchRequest(
        tittle: "Ariwizzy",
        imgUrl:
            "https://miro.medium.com/max/700/1*jHCR_94Xae5KMtRgVb70jw.jpeg"),
    SearchRequest(
        tittle: "Arnold",
        imgUrl:
            "https://decider.com/wp-content/uploads/2020/04/extraction-1.jpg?quality=80&"),
    SearchRequest(
        tittle: "Jude",
        imgUrl:
            "https://pbs.twimg.com/profile_images/1062752395200004101/Z-vrQIEl.jpg"),
  ];
  List<SearchRequest> get searchResult {
    return [...searchScreen];
  }
}
