📱 Calculadora de IMC

Aplicativo mobile desenvolvido para a 3ª nota avaliativa da disciplina de Desenvolvimento para Dispositivos Móveis, ministrada pelo professor Alisson Wilker. O aplicativo foi desenvolvido com Flutter/Dart para calcular o Índice de Massa Corporal (IMC) de forma simples e rápida. 

📋 Sobre o Projeto

Este projeto foi desenvolvido como atividade prática da disciplina de Desenvolvimento para Dispositivos Móveis, no 5º Semestre do Curso Superior de Tecnologia em Sistemas para Internet.

👨‍💻 Desenvolvedores

Davi Campos Parente e Marques Hermínio.

🚀 Funcionalidades

1 -  Entrada de dados dinâmica — aceita vírgula ou ponto como separador decimal
2 -  Cálculo automático do IMC com base na fórmula padrão (peso / altura²)
3 -  Classificação de saúde com quatro categorias:

  Abaixo do Peso (IMC < 18,5)
  Peso Ideal (18,5 ≤ IMC < 24,9)
  Levemente Acima do Peso (25,0 ≤ IMC < 29,9)
  Obesidade (IMC ≥ 30)


✅ Validação de entradas — trata campos vazios, valores inválidos e divisão por zero
✅ Navegação entre telas — tela principal e tela "Sobre o Aplicativo"
✅ Interface responsiva — adaptada para diferentes tamanhos de tela


🖥️ Telas

1 - Tela principal com os campos de peso e altura, botão de cálculo e resultado;
2 - Tela Sobre Informações sobre os desenvolvedores e funcionalidades do app.

🛠️ Tecnologias Utilizadas

Flutter — SDK de desenvolvimento mobile multiplataforma
Dart — Linguagem de programação
Material Design — Biblioteca de componentes visuais


📐 Fórmula do IMC
IMC = Peso (kg) / Altura² (m)
Tabela de Classificação (OMS): IMC Classificação 
< 18,5 Abaixo do Peso
18,5 – 24,9 Peso Ideal
25,0 – 29,9 Levemente Acima do Peso
≥ 30,0O besidade

📁 Estrutura do Projeto
lib/
└── main.dart          # Código principal com todas as classes
    ├── MeuAplicativo      # Widget raiz do app
    ├── CalculadoraImc     # Tela principal (StatefulWidget)
    └── TelaSobre          # Tela "Sobre" (StatelessWidget)
