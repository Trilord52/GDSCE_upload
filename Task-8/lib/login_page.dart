import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text("Login Page")),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return TextField(
                    onChanged: (value) => context.read<AuthBloc>().add(UpdateEmail(value)),
                    decoration: InputDecoration(labelText: "Email"),
                  );
                },
              ),
              SizedBox(height: 10),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return TextField(
                    onChanged: (value) => context.read<AuthBloc>().add(UpdatePassword(value)),
                    obscureText: !state.isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: "Password",
                      suffixIcon: IconButton(
                        icon: Icon(state.isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                        onPressed: () => context.read<AuthBloc>().add(TogglePasswordVisibility()),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Entered Email: ${state.email}"),
                      Text("Entered Password: ${state.password}"),
                    ],
                  );
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Perform login action
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
