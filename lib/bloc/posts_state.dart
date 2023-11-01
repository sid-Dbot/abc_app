part of 'posts_bloc.dart';

@immutable
sealed class PostsState {
  List<Post>? posts;
}

final class PostsInitial extends PostsState {}
