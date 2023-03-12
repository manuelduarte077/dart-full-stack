import 'package:users_api/src/data/models/models.dart';
import 'package:users_api/src/data/users_data_source.dart';

/// {@template in_memory_users_data_source}
/// An in-memory implementation of the [UsersDataSource] interface.
/// {@endtemplate}
class InMemoryUsersDataSource extends UsersDataSource {
  /// In memory [User] list
  final List<User> users = const [
    User(id: '1', name: 'manuelduarte077', email: 'manuel@email.com'),
    User(id: '2', name: 'manuelduarte077', email: 'manuel@email.com'),
    User(id: '3', name: 'manuelduarte077', email: 'manuel@email.com'),
    User(id: '4', name: 'manuelduarte077', email: 'manuel@email.com'),
    User(id: '5', name: 'manuelduarte077', email: 'manuel@email.com'),
  ];

  @override
  Future<List<User>> getAllUsers() async {
    return users;
  }

  @override
  Future<User> getUserById({required String id}) async {
    return users.firstWhere(
      (user) => user.id == id,
      orElse: () => const User.empty(),
    );
  }
}
