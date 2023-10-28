
import 'package:equatable/equatable.dart';

class UserEntiti extends Equatable {
  const UserEntiti(
      {required this.id,
      required this.createdAt,
      required this.name,
      required this.avatar});

  final int id;
  final String createdAt;
  final String name;
  final String avatar;

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}

