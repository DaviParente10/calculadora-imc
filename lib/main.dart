import 'package:flutter/material.dart';
 
void main() {
  runApp(const MeuAplicativo());
}
 
class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculadoraImc(),
    );
  }
}
 
class CalculadoraImc extends StatefulWidget {
  const CalculadoraImc({super.key});
 
  @override
  State<CalculadoraImc> createState() => _CalculadoraImcEstado();
}
 
class _CalculadoraImcEstado extends State<CalculadoraImc> {
  final TextEditingController _controladorPeso = TextEditingController();
  final TextEditingController _controladorAltura = TextEditingController();
 
  String _resultado = "Informe seus dados";
 
  // CORREÇÃO 1: Uso de tryParse para evitar crash com entrada inválida
  // CORREÇÃO 2: Validação de valores menores ou iguais a zero
  // CORREÇÃO 3: Condições simplificadas (sem redundância nos else if)
  void _calcularImc() {
    if (_controladorPeso.text.isEmpty || _controladorAltura.text.isEmpty) {
      setState(() {
        _resultado = "Por favor, preencha todos os campos!";
      });
      return;
    }
 
    final double? peso =
        double.tryParse(_controladorPeso.text.replaceAll(',', '.'));
    final double? altura =
        double.tryParse(_controladorAltura.text.replaceAll(',', '.'));
 
    if (peso == null || altura == null) {
      setState(() {
        _resultado = "Digite valores numéricos válidos!";
      });
      return;
    }
 
    if (peso <= 0 || altura <= 0) {
      setState(() {
        _resultado = "Valores devem ser maiores que zero!";
      });
      return;
    }
 
    final double imc = peso / (altura * altura);
 
    setState(() {
      if (imc < 18.5) {
        _resultado = "IMC: ${imc.toStringAsFixed(1)} (Abaixo do Peso)";
      } else if (imc < 24.9) {
        _resultado = "IMC: ${imc.toStringAsFixed(1)} (Peso Ideal)";
      } else if (imc < 29.9) {
        _resultado =
            "IMC: ${imc.toStringAsFixed(1)} (Levemente Acima do Peso)";
      } else {
        _resultado = "IMC: ${imc.toStringAsFixed(1)} (Obesidade)";
      }
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de IMC"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(height: 20),
            TextFormField(
              controller: _controladorPeso,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Peso (kg)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controladorAltura,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Altura (ex: 1.75)",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularImc,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.all(15),
              ),
              child: const Text(
                "Calcular",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              _resultado,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaSobre(),
                  ),
                );
              },
              icon: const Icon(Icons.info_outline, color: Colors.blueAccent),
              label: const Text(
                "Sobre o Aplicativo",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 
class TelaSobre extends StatelessWidget {
  const TelaSobre({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sobre o Aplicativo"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Desenvolvedores",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),
            const Card(
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "• Davi Campos Parente",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "• Marques Hermínio",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Divider(height: 20),
                    Text(
                      "Estudantes do 5º Semestre do Curso Superior de Tecnologia em Sistemas para Internet.",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Disciplina: Desenvolvimento para Dispositivos Móveis.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Funcionalidades do App",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    _construirItemFuncionalidade(
                      Icons.edit,
                      "Entrada de Dados Dinâmica",
                      "Permite inserir peso e altura com suporte a pontos ou vírgulas de forma flexível.",
                    ),
                    const Divider(),
                    _construirItemFuncionalidade(
                      Icons.calculate,
                      "Cálculo Automatizado",
                      "Processa instantaneamente o Índice de Massa Corporal com base na fórmula matemática padrão.",
                    ),
                    const Divider(),
                    _construirItemFuncionalidade(
                      Icons.assignment,
                      "Classificação de Saúde",
                      "Exibe o diagnóstico imediato do estado do usuário (Abaixo do peso, Peso ideal, Sobrepeso ou Obesidade).",
                    ),
                    const Divider(),
                    _construirItemFuncionalidade(
                      Icons.phone_android,
                      "Interface Responsiva",
                      "Design centralizado e adaptável para evitar que o teclado do dispositivo quebre o layout da tela.",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
 
  Widget _construirItemFuncionalidade(
    IconData icone,
    String titulo,
    String descricao,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icone, color: Colors.blueAccent, size: 28),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                // CORREÇÃO 4: Colors.black64 não existe — substituído por Colors.black54
                Text(
                  descricao,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}