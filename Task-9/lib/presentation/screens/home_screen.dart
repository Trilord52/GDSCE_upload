import 'package:flutter/material.dart';
import '../../data/models/user.dart';
import '../../data/repositories/user_repository.dart';
import '../../data/services/api_service.dart';
import '../../data/services/storage_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserRepository userRepository = UserRepository(
    apiService: ApiService(),
    storageService: StorageService(),
  );

  List<User> _users = [];
  User? _savedUser;
  bool _isLoading = true;
  String _errorMessage = "";

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      _savedUser = await userRepository.getSavedUser();
      _users = await userRepository.fetchUsers();
    } catch (e) {
      _errorMessage = e.toString();
    }
    setState(() => _isLoading = false);
  }

  Future<void> _saveUser(User user) async {
    await userRepository.saveUser(user);
    setState(() => _savedUser = user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User List & Storage App")),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : _errorMessage.isNotEmpty
              ? Center(child: Text(_errorMessage))
              : Column(
                  children: [
                    if (_savedUser != null)
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          "Last Saved: ${_savedUser!.name} - ${_savedUser!.email}",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: _users.length,
                        itemBuilder: (context, index) {
                          final user = _users[index];
                          return ListTile(
                            title: Text(user.name),
                            subtitle: Text(user.email),
                            trailing: IconButton(
                              icon: Icon(Icons.save, color: Colors.green),
                              onPressed: () => _saveUser(user),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
    );
  }
}
