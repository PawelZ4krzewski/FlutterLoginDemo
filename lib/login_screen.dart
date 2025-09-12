import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo and header
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/pp.png', width: 80, height: 80),
                    const SizedBox(height: 8),
                    Text('Witamy ponownie!', style: textTheme.headlineSmall),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Hasło',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) => setState(() => rememberMe = value!),
                  ),
                  const Text('Zapamiętaj mnie'),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Zapomniałeś hasła?'),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Zaloguj się'),
                ),
              ),
              const SizedBox(height: 16),

              Text('Twoje powiadomienia', style: textTheme.headlineSmall),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.separated(
                  itemCount: 50,
                  separatorBuilder: (_, __) => const Divider(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const Icon(Icons.notifications),
                      title: Text('Powiadomienie #${index + 1}'),
                      subtitle: Text(
                        'To jest opis powiadomienia numer ${index + 1}.',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}