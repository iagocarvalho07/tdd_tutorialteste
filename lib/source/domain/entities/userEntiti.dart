import 'package:equatable/equatable.dart';

class UserEntiti extends Equatable {
  const UserEntiti(
      {required this.id,
      required this.createdAt,
      required this.name,
      required this.avatar});

  const UserEntiti.empty()
      : this(
            id: "1",
            createdAt: "emptyCreteadAt",
            name: "emptyName",
            avatar: "emptyAvatar");

  final String id;
  final String createdAt;
  final String name;
  final String avatar;

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
