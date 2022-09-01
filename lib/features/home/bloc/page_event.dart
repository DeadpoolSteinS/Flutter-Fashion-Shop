part of 'page_bloc.dart';

@immutable
abstract class PageEvent {}

class ChangePage extends PageEvent {
  final int value;
  ChangePage(this.value);
}
