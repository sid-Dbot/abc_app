import 'dart:convert';

import 'package:abc_app/models/post.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

part 'get_posts_state.dart';

class GetPostsCubit extends Cubit<GetPostsState> {
  GetPostsCubit() : super(GetPostsInitial());
  List<Post> a = [];
  Future getPosts() async {
    final res =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (res.statusCode == 200) {
      print(res.body);

      a = postFromJson(res.body);
      print(a[0]);

      emit(PostsFetched(a));
    } else {
      emit(NoData());
      throw Exception('No data');
    }
  }
}
