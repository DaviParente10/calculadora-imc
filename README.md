📱 Calculadora de IMC — Flutter
Aplicativo mobile desenvolvido com Flutter/Dart para calcular o Índice de Massa Corporal (IMC) de forma simples e rápida.

📋 Sobre o Projeto
Este projeto foi desenvolvido como atividade prática da disciplina de Desenvolvimento para Dispositivos Móveis, no 5º Semestre do Curso Superior de Tecnologia em Sistemas para Internet.
👨‍💻 Desenvolvedores
NomeCursoDavi Campos ParenteTSI — 5º SemestreMarques HermínioTSI — 5º Semestre

🚀 Funcionalidades

✅ Entrada de dados dinâmica — aceita vírgula ou ponto como separador decimal
✅ Cálculo automático do IMC com base na fórmula padrão (peso / altura²)
✅ Classificação de saúde com quatro categorias:

Abaixo do Peso (IMC < 18,5)
Peso Ideal (18,5 ≤ IMC < 24,9)
Levemente Acima do Peso (25,0 ≤ IMC < 29,9)
Obesidade (IMC ≥ 30)


✅ Validação de entradas — trata campos vazios, valores inválidos e divisão por zero
✅ Navegação entre telas — tela principal e tela "Sobre o Aplicativo"
✅ Interface responsiva — adaptada para diferentes tamanhos de tela


🖥️ Telas
TelaDescriçãoCalculadoraImcTela principal com os campos de peso e altura, botão de cálculo e resultadoTelaSobreInformações sobre os desenvolvedores e funcionalidades do app

🛠️ Tecnologias Utilizadas

Flutter — SDK de desenvolvimento mobile multiplataforma
Dart — Linguagem de programação
Material Design — Biblioteca de componentes visuais


⚙️ Como Executar
Pré-requisitos

Flutter SDK instalado e configurado
Android Studio ou VS Code com extensão Flutter
Emulador Android/iOS ou dispositivo físico conectado

Passos
bash# 1. Clone o repositório
git clone https://github.com/seu-usuario/calculadora-imc.git

# 2. Acesse a pasta do projeto
cd calculadora-imc

# 3. Instale as dependências
flutter pub get

# 4. Execute o aplicativo
flutter run

📐 Fórmula do IMC
IMC = Peso (kg) / Altura² (m)
Tabela de Classificação (OMS)
IMCClassificação< 18,5Abaixo do Peso18,5 – 24,9Peso Ideal25,0 – 29,9Levemente Acima do Peso≥ 30,0Obesidade

📁 Estrutura do Projeto
lib/
└── main.dart          # Código principal com todas as classes
    ├── MeuAplicativo      # Widget raiz do app
    ├── CalculadoraImc     # Tela principal (StatefulWidget)
    └── TelaSobre          # Tela "Sobre" (StatelessWidget)

📄 Licença
Este projeto foi desenvolvido para fins acadêmicos.
