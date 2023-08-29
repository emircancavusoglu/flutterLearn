class Post{ //just in constructor time is invokes
  final int userId;
  final int id;
  final String title;
  final String body;
  Post(this.userId,this.id,this.title,this.body);
}
class Post1{
   int? userId;
   int? id;
   String? title;
   String? body;
}
class Post2{
   late int userId;
   late int id;
   late String  title;
   late String? body;
}
class Post3{
   int userId;
   int id;
   String title;
   String body;
  Post3(this.userId,this.id,this.title,this.body);
}
class Post4{
   final int userId;
   final int id;
   final String title;
   final String body;
  Post4({required this.userId,required this.id,required this.title,required this.body});
}

