part of 'tab_bar_bloc.dart';

@immutable
sealed class TabBarState {
  int selectedTab;
  TabBarState({required this.selectedTab});
  @override
  List<Object?> get props => [selectedTab];
}

final class TabBarInitial extends TabBarState {
  TabBarInitial() : super(selectedTab: 0);
}

final class TabChanged extends TabBarState {
  TabChanged(int tab) : super(selectedTab: tab);
}
