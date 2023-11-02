part of 'get_posts_cubit.dart';

@immutable
sealed class GetPostsState {
  List<Post>? posts;
  GetPostsState({required this.posts});
  @override
  List<Object?> get props => [posts];
}

final class GetPostsInitial extends GetPostsState {
  GetPostsInitial() : super(posts: []);
}

class PostsFetched extends GetPostsState {
  PostsFetched(List<Post> posts) : super(posts: posts);
}

class NoData extends GetPostsState {
  NoData() : super(posts: []);
}
