import 'package:GUConnect/src/dummy_data/posts.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
              SizedBox(width: 16), // Add some spacing between buttons
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.network(
                          'data:image/jpeg;base64,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',
                          width: 50, // Adjust the width as needed
                          height: 50),
                      Column(children: [
                        Text("Name"),
                        Text("Faculty"),
                        Row(children: [
                          Text("Office"),
                          Text("Posts"),
                          Text("Rating")
                        ])
                      ])
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [Text("A"), Text("B"), Text("C")],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClickableIcon(Icons.grid_on, 'Posts', () {}),
              ClickableIcon(Icons.message, 'Confessions', () {}),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 1.0,
            height: 0.0,
          ),
          Row(
            children: [
              Column(
                children: List.generate(posts.length, (index) {
                  return buildPostCard(posts[index]);
                }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildPostCard(Post post) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              post.text,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Image.network(
            post.imageUrl,
            fit: BoxFit.cover,
            height: 200.0,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up),
                    SizedBox(width: 4.0),
                    Text('${post.likes} Likes'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment),
                    SizedBox(width: 4.0),
                    Text('${post.comments} Comments'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ClickableIcon extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final VoidCallback onTap;

  ClickableIcon(this.icon, this.labelText, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          SizedBox(height: 8.0),
          Text(
            labelText,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
