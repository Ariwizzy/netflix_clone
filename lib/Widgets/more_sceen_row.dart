import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/constant.dart';
import 'package:netflix_clone/modules/dummy_datas.dart';

class MoreScreenRow extends StatelessWidget {
  Container conText(String text) {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 25),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey[500], fontWeight: FontWeight.w400, fontSize: 17),
      ),
    );
  }

  Container conShape(String url) {
    double radius = 50;
    return Container(
      height: 27,
      width: 27,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
          bottomLeft: Radius.circular(radius),
        ),
      ),
      child: Image.network(
        url,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final accNames = DummyData().accountName;
    double sizedHeight = 7;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 40,
        ),
        Container(
            height: 105,
            child: ListView.builder(
                itemCount: accNames.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            color: Colors.black,
                            height: 75,
                            width: MediaQuery.of(context).size.width / 6,
                            child: Image.network(
                              accNames[index].imgUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: sizedHeight,
                          ),
                          Text(
                            accNames[index].names,
                            style: TextStyle(color: Colors.grey[400]),
                          )
                        ],
                      ),
                    ],
                  );
                })),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.mode_edit,
              color: Colors.grey[400],
              size: 20,
            ),
            SizedBox(
              width: sizedHeight,
            ),
            Text(
              "Manage Profiles",
              style: TextStyle(color: Colors.grey[400]),
            )
          ],
        ),
        SizedBox(
          height: 17,
        ),
        Container(
          height: 280,
          color: Colors.grey[900],
          padding: EdgeInsets.only(left: 14, top: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.message, color: Colors.white),
                  Text(
                    " Tell friends about Netflix.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Share this link so your friends can join the conversation",
                style: KshareText,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "about all your favorite TV programmes and films.",
                style: KshareText,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Terms & Conditions",
                style: TextStyle(color: Colors.grey[600], fontSize: 12.7),
              ),
              Container(
                width: 120,
                height: 1.8,
                color: Colors.grey[600],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 13),
                color: Colors.black,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: <Widget>[
                    Text(
                      "https://wwww.netflix.com.ng/n/58a57bef...",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 1000),
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: RaisedButton(
                          color: Colors.white,
                          child: Text("Copy link"),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      conShape(
                          "https://seeklogo.com/images/W/whatsapp-icon-logo-BDC0A8063B-seeklogo.com.png"),
                      SizedBox(
                        height: sizedHeight,
                      ),
                      Text(
                        "Whatsapp",
                        style: KshareText,
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 1,
                    color: Colors.grey[800],
                  ),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/600px-Facebook_Logo_%282019%29.png"),
                        radius: 14,
                      ),
                      SizedBox(
                        height: sizedHeight,
                      ),
                      Text(
                        "Facebook",
                        style: KshareText,
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 1,
                    color: Colors.grey[800],
                  ),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.etimg.com/thumb/msid-63994810,width-650,imgsize-35146,,resizemode-4,quality-100/.jpg"),
                        radius: 14,
                      ),
                      SizedBox(
                        height: sizedHeight,
                      ),
                      Text(
                        "Gmail",
                        style: KshareText,
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 1,
                    color: Colors.grey[800],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.more_horiz,
                        size: 35,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: sizedHeight,
                      ),
                      Text(
                        "More",
                        style: KshareText,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.only(bottom: 12, top: 12),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.check,
                size: 30,
                color: Colors.grey[300],
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                "My List",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 19,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Container(
          color: Colors.grey[800],
          height: 1,
          width: double.infinity,
        ),
        SizedBox(
          height: 20,
        ),
        conText("App Settings"),
        conText("Account"),
        conText("Help"),
        conText("Sign Out"),
      ],
    );
  }
}
