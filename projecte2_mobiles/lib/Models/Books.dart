import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart' as http;


class Books{
  String title, description, author, imgUrl,linkUrl;
  int imgWidth, imgHeight;
  Books({
    required this.title, 
    required this.description, 
    required this.author,
    required this.imgUrl,
    required this.imgWidth,
    required this.imgHeight,
    required this.linkUrl,
  });
  Books.fromJson(Map<String, dynamic> json)
      : title = json["title"] ?? "No title",
        description = json["description"] ?? "No description",
        author = json["author"] ?? "No format",
        imgUrl = json["book_image"] ?? "No format",
        imgWidth = json["book_image_width"] ?? 0,
        imgHeight = json["book_image_height"] ?? 0,
        linkUrl = json["amazon_product_url"] ?? 0;
       
}


Future<List<Books>> loadBooksList() async{
final Url = Uri.parse("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=2rpxho1EGhTePCgOK3nFzR3yulDba1US");
final Response = await http.get(Url);
final json = jsonDecode(Response.body);
final List jsonBookList = json["results"]["books"];
List<Books> BooksList = [];
for(final jsonBook in jsonBookList){
  BooksList.add(Books.fromJson(jsonBook));
}
return BooksList;
}

