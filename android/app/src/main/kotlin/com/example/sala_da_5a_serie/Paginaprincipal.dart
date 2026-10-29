import 'package:flutter/material.dart';

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  Widget _tituloSecao(String texto) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _disciplina(IconData icone, String nome, Color cor) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: cor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: cor),
        ),
        child: Column(
          children: [
            Icon(icone, color: cor),
            const SizedBox(height: 6),
            Text(nome, style: const TextStyle(fontSize: 13)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sala da 5ª Série"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Cabeçalho da turma =====
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.school, size: 30),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Turma 5ª Série A",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Text("Escola Municipal Monteiro Lobato"),
                        Text("Período: Manhã  |  Sala 12"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            _tituloSecao("Professora Responsável"),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.teal),
              ),
              child: const Row(
                children: [
                  CircleAvatar(child: Icon(Icons.person)),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Profª Ana Paula Souza",
                            style: TextStyle(fontSize: 16)),
                        Text("E-mail: ana.souza@escola.com"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            _tituloSecao("Disciplinas"),
            Row(
              children: [
                _disciplina(Icons.menu_book, "Português", Colors.red),
                _disciplina(Icons.calculate, "Matemática", Colors.blue),
                _disciplina(Icons.science, "Ciências", Colors.green),
              ],
            ),
            Row(
              children: [
                _disciplina(Icons.history_edu, "História", Colors.brown),
                _disciplina(Icons.public, "Geografia", Colors.orange),
                _disciplina(Icons.language, "Inglês", Colors.purple),
              ],
            ),

            _tituloSecao("Avisos da Semana"),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.amber),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Prova de Matemática na sexta-feira."),
                  SizedBox(height: 6),
                  Text("• Entregar o trabalho de Ciências até quarta."),
                  SizedBox(height: 6),
                  Text("• Reunião de pais no dia 10 às 19h."),
                ],
              ),
            ),

            _tituloSecao("Informações da Turma"),
            const Row(
              children: [
                Icon(Icons.groups),
                SizedBox(width: 8),
                Text("Total de alunos: 28"),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.access_time),
                SizedBox(width: 8),
                Text("Horário: 7h30 às 11h50"),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8),
                Text("Londrina - Paraná"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}