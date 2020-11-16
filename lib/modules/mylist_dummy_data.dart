import 'package:netflix_clone/modules/modules.dart';

class MyLists {
  List<MyListData> myListNames = [
    MyListData(
        date: "2020",
        imgUrl:
            'https://plushng.com/wp-content/uploads/2020/09/Enola-Holmes.jpg',
        tittle: "Enola Holmes",
        description:
            "While searching for her missing mother, intrepid teen Enola Holmes uses her sleuthing skills to outsmart big brother Sherlock and help a runaway lord.",
        starring: "Millie Bobby Brown, Sam Claflin, Henry Cavill",
        director: "Sam Claflin"),
    MyListData(
        date: "2020",
        imgUrl:
            "https://plushng.com/wp-content/uploads/2020/08/Project-Power-2020.jpg",
        tittle: "Project Power",
        description:
            "An ex-soldier, a teen and a cop collide in New Orleans as they hunt for the source behind a dangerous new pill that grants users temporary superpowers.",
        starring: "Jamie Foxx, Joseph Gordon-Levitt",
        director: " Dominique Fishback"),
    MyListData(
        imgUrl:
            "https://plushng.com/wp-content/uploads/2020/09/Mulan-Movie.jpg",
        tittle: "Mulan",
        description:
            "When the Emperor of China issues a decree that one man per family must serve in the Imperial Chinese Army to defend the country from Huns, Hua Mulan, the eldest daughter of an honored warrior, steps in to take the place of her ailing father.",
        starring: "Liu Yifei, Yoson An, Gong Li",
        director: "Gong Li",
        date: "2020"),
    MyListData(
        imgUrl:
            "https://plushng.com/wp-content/uploads/2020/08/The-Sleepover.jpg",
        tittle: "The Sleepover",
        description:
            "Two siblings who discover their seemingly normal mom is a former thief in witness protection. Mom is forced to pull one last job, and the kids team up to rescue her over the course of an action-packed night.",
        starring: "Joanna Herrington, Sadie Stanley, Joe Manganiello",
        director: "Joanna Herrington",
        date: "2020"),
    MyListData(
        imgUrl:
            "https://plushng.com/wp-content/uploads/2020/09/The-Babysitter-Killer-Queen-2020.jpg",
        tittle: "The Babysitter",
        description:
            "Two years after defeating a satanic cult led by his babysitter Bee, Cole’s trying to forget his past and focus on surviving high school. But when old enemies unexpectedly return, Cole will once again have to outsmart the forces of evil.",
        starring: "Judah Lewis, Jenna Ortega, Emily Alyn Lind",
        director: "Emily Alyn Lind",
        date: '2020'),
    MyListData(
        imgUrl:
            "https://plushng.com/wp-content/uploads/2020/08/Peninsula-2020.jpg",
        tittle: "Peninsula",
        description:
            "A soldier and his team battle hordes of post-apocalyptic zombies in the wastelands of the Korean Peninsula.",
        starring: "Kang Dong-won, Lee Jung-hyun, Lee Re",
        director: "Kang Dong-won",
        date: "2020"),
    MyListData(
        imgUrl:
            "https://plushng.com/wp-content/uploads/2020/08/The-One-And-Only-Ivan-Movie.jpg",
        tittle: "Kang Dong-won",
        description:
            "Ivan is a 400-pound silverback gorilla who shares a communal habitat in a suburban shopping mall with Stella the elephant, Bob the dog, and various other animals. He has few memories of the jungle where he was captured",
        starring: "Sam Rockwell, Angelina Jolie, Danny DeVito",
        director: "Sam Rockwell",
        date: "2020"),
    MyListData(
        imgUrl:
            "https://plushng.com/wp-content/uploads/2020/07/The-Kissing-Booth-2.jpg",
        tittle: "The Kissing Booth 2",
        description:
            "In the sequel to 2018’s THE KISSING BOOTH, high school senior Elle juggles a long-distance relationship with her dreamy boyfriend Noah, college applications, and a new friendship with a handsome classmate that could change everything",
        starring: "Joey King, Jacob Elordi, Joel Courtney",
        director: "Joel Courtney",
        date: "2020")
  ];
  List<MyListData> get myList {
    return [...myListNames];
  }
}
