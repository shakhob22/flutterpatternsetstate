
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterpatternsetstate/model/post_model.dart';
import 'package:flutterpatternsetstate/service/http_service.dart';

void main() {
  test("posts in not null", () async {
    var response = await Network.GET(Network.API_LIST, {});
    List<Post> posts = Network.parsePostList(response!);
    expect(posts, isNotNull);
  });

  test("Posts is greater than zero", () async {
    var response = await Network.GET(Network.API_LIST, {});
    List<Post> posts = Network.parsePostList(response!);
    expect(posts.length, equals(100));
  });

  test("Check post's title", () async {
    var response = await Network.GET(Network.API_LIST, {});
    List<Post> posts = Network.parsePostList(response!);
    expect(posts[1].title!.toUpperCase(), equals("QUI EST ESSE"));
  });
}
