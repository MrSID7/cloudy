part of 'home_bloc.dart';

class HomeState {
  final int currentPageIndex;
  const HomeState({required this.currentPageIndex});
}

class HomeBottomNavState extends HomeState {
  HomeBottomNavState({required super.currentPageIndex});
}
