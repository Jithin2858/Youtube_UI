import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class VideoFeed extends StatefulWidget {
  // VideoFeed({Key key}) : super(key: key);

  _VideoFeedState createState() => _VideoFeedState();
}

class _VideoFeedState extends State<VideoFeed> {
  List<Map> data = [
    {
      'url': 'https://www.youtube.com/watch?v=3R6KnQLvZNI',
      'thumbnail': "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png",
      'title': 'Luminar Technolab Assignments',
      'date': 'October 26, 2022',
      'creator': 'Jithin S',
      'profile_url':
      'https://avatars.githubusercontent.com/u/108852383?v=4',
    },
    {
      'url': 'https://www.youtube.com/watch?v=sPW7nDBqt8w',
      'thumbnail': 'https://www.extremetech.com/wp-content/uploads/2011/10/dart-logo-banner1-348x196.jpg',
      'title': 'The Flutter YouTube Channel is Here!',
      'date': 'October 26, 2022',
      'creator': 'Flutter',
      'profile_url':
      'https://avatars.githubusercontent.com/u/108852383?v=4',
    },
    {
      'url': 'https://www.youtube.com/watch?v=vqPG1tU6-c0',
      'thumbnail': 'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png',
      'title': 'Introducing The Boring Show!',
      'date': 'October 26, 2022',
      'creator': 'Flutter',
      'profile_url':
      'https://avatars.githubusercontent.com/u/108852383?v=4',
    },
    {
      'url': 'https://www.youtube.com/watch?v=frEG8f0Aa1c',
      'thumbnail': 'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png',
      'title': 'Flutter vs React native',
      'date': 'October 26, 2022',
      'creator': 'Jithin S',
      'profile_url':
      'https://avatars.githubusercontent.com/u/108852383?v=4',
    },
    {
      'url': 'https://youtu.be/GE0oeBj9Cr0',
      'thumbnail': 'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png',
      'title': 'How to create first flutter for web project   step by step',
      'date': 'October 26, 2022',
      'creator': 'Jithin S',
      'profile_url':
      'https://avatars.githubusercontent.com/u/108852383?v=4',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Column(
            children: <Widget>[
              AspectRatio(
                child: Image(
                  image: NetworkImage(data[index]['thumbnail']),
                  centerSlice: Rect.largest,
                ),
                aspectRatio: 16 / 9,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(data[index]['profile_url']),
                ),
                title: Text(
                  data[index]['title'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(data[index]['creator']+" . "+data[index]['date'],
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        );
      },
    );
  }
}
