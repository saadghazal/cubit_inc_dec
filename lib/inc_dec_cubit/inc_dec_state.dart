part of 'inc_dec_cubit.dart';

class IncDecState extends Equatable {
  int count;

  IncDecState({
    required this.count,
  });
  factory IncDecState.initial(){
    return IncDecState(count: 0);
  }
  @override
  List<Object> get props => [
    count
  ];

  @override
  String toString() {
    return 'IncDecState{count: $count}';
  }

  IncDecState copyWith({
    int? count,
  }) {
    return IncDecState(
      count: count ?? this.count,
    );
  }

}

