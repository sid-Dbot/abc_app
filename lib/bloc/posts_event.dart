part of 'posts_bloc.dart';

@immutable
sealed class PostsEvent {}

class GetPosts extends PostsEvent {}
