import 'dart:convert';

import 'package:abc_app/models/post.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<GetPosts>((event, emit) async {
      // TODO: implement event handler
      List<Post> a = [];

      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      a = postFromJson(response.body);
      print(a.length);

      emit(PostsFetched(a));
    });
  }
}
