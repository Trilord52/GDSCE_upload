import '../services/api_service.dart';
import '../services/storage_service.dart';
import '../models/user.dart';

class UserRepository {
  final ApiService apiService;
  final StorageService storageService;

  UserRepository({required this.apiService, required this.storageService});

  Future<List<User>> fetchUsers() => apiService.fetchUsers();

  Future<void> saveUser(User user) => storageService.saveUser(user);

  Future<User?> getSavedUser() => storageService.getSavedUser();
}
