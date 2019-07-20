class Post {
  const Post({
    this.title,
    this.author,
    this.imageUrl
  });

  final String title;
  final String author;
  final String imageUrl;
}

final List<Post> posts= [
  Post(
    title: 'Candy shop',
    author: 'Mohamed Chahin',
    imageUrl: 'http://pic4.nipic.com/20090731/2105175_093121054_2.jpg'
  ),
  Post(
    title: 'Tom shop',
    author: 'liming',
    imageUrl: 'http://pic38.nipic.com/20140226/7521449_192055238164_2.jpg'
  ),
  Post(
    title: 'jin tian',
    author: 'ming tian',
    imageUrl: 'http://www.photophoto.cn/m36/108/008/1080080026.jpg'
  ),
];