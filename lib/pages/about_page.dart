import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E6828),
        title: const Text('Sobre', style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Unicv-Avisos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0E6828),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Trabalho 5° Semestre de Engenharia de Software e Analise e Desenvolvimento de Sistemas',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle('Versão'),
            const Text(
              '1.0.0',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle('Desenvolvedores'),
            const Text(
              '• Rafael Shoji Hirata\n• Igor Maruiti Araujo\n• João Vitor de Souza',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle('Contato'),
            const Row(
              children: [
                Icon(Icons.email, color: Color(0xFF4B9460)),
                SizedBox(width: 8),
                Text(
                  'contato@unicv-chat.edu.br',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Divider(color: Colors.grey[400]),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFF4B9460),
      ),
    );
  }

  Widget _buildFooter() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Obrigado por usar nosso aplicativo!',
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Siga-nos nas redes sociais:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF4B9460),
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.facebook, color: Color(0xFF4B9460)),
            SizedBox(width: 8),
            Text(
              '/Unicv-avisos.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.twitter, color: Color(0xFF4B9460)),
            SizedBox(width: 8),
            Text(
              '@Unicv-avisos',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            FaIcon(FontAwesomeIcons.instagram, color: Color(0xFF4B9460)),
            SizedBox(width: 8),
            Text(
              '@Unicv-avisos',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
