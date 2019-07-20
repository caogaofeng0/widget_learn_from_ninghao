import 'package:flutter/material.dart';
import '../model/post.dart';
class ViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridViewBuildDemo();
  }
}

class GridViewBuildDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
     return Container(
       child: Image.network(
         posts[index].imageUrl,
         fit:BoxFit.cover
       ),
     );
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
      ),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey,
          alignment: Alignment(0.0, 0.0),
          child: Text('${index + 1} data', style: TextStyle(fontSize: 15, color: Colors.white),),
        );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100)
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover
          ),
        ),
        Positioned(
          bottom: 18.0,
          left: 9.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
              ),
               Text(
                posts[index].author,
                style: TextStyle(color: Colors.white),
              )
            ],
          ) ,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      // reverse: false,
      // scrollDirection: Axis.vertical,
      // onPageChanged: (page) => debugPrint('page: $page'),
      // controller: PageController(
      //   initialPage: 1,
      //   keepPage: false,
      // ),
      children: <Widget>[
        Container(
          color: Colors.brown[100],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        ),
        Container(
          color: Colors.brown[400],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        ),
        Container(
          color: Colors.brown[800],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white)
          ),
        )
      ],
    );
  }
}