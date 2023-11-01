part of 'posts_bloc.dart';

@immutable
sealed class PostsState {
  List<Post>? posts;
  PostsState({required this.posts});
  @override
  List<Object?> get props => [posts];
}

final class PostsInitial extends PostsState {
  PostsInitial() : super(posts: []);
}

class PostsFetched extends PostsState {
  PostsFetched(List<Post> posts) : super(posts: posts);
}
