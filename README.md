# 💻 SAP Microcontroller Simulator

Um simulador interativo construído em Flutter que emula o funcionamento básico de um microcontrolador SAP (Simple As Possible). Este aplicativo permite aos usuários escrever código assembly simples, compilá-lo e observar a execução passo a passo ou automaticamente, visualizando as mudanças nos registradores, memória e flags.

---

## ✨ Visão Geral

Este projeto oferece uma ferramenta educacional para entender a arquitetura de computadores e o ciclo de instrução de uma CPU de forma prática e visual. Com uma interface de usuário intuitiva e animada, o simulador torna o aprendizado sobre o processamento de instruções e o fluxo de dados em um microcontrolador muito mais acessível.

---

## 🚀 Funcionalidades Principais

- **Editor de Código Assembly**: Escreva seu próprio código assembly SAP diretamente no aplicativo.
- **Compilador Integrado**: Converte o código assembly em instruções executáveis, com validação básica de sintaxe e operandos.
- **Execução Passo a Passo**: Avance uma instrução por vez para observar detalhadamente o impacto em cada componente do microcontrolador.
- **Modo de Execução Contínua**: Execute o programa automaticamente para ver o resultado final mais rapidamente.
- **Visualização de Registradores**:
  - PC (Program Counter)
  - IR (Instruction Register)
  - MAR (Memory Address Register)
  - MDR (Memory Data Register)
  - ACC (Accumulator)
  - OUT (Output Register)
- **Unidade Lógica Aritmética (ULA/ALU)**: Destaque visual da ULA durante operações como ADD e SUB.
- **Memória RAM**: Visualize o conteúdo de 16 posições de memória, com destaque para endereços acessados.
- **Flags de Estado**: Observe o Carry Flag e o Zero Flag que indicam o resultado de operações aritméticas.
- **Console de Log**: Um console integrado exibe mensagens de simulação e a saída da instrução `OUT`.
- **Animações e Destaques Visuais**: Elementos da interface se acendem para indicar qual bloco funcional ou posição de memória está ativo durante a execução.
- **Tela de Boas-Vindas (Splash Screen)**: Uma tela inicial estilosa com gradiente e um botão para iniciar a simulação.
- **Design Responsivo**: Interface otimizada para diferentes tamanhos de tela (desktop, tablet, mobile).

---

## 🖥️ Instruções Suportadas (Assembly SAP)

| Instrução    | Descrição                                                                 | Exemplo  |
|--------------|---------------------------------------------------------------------------|----------|
| `LDA <addr>` | Load Accumulator: Carrega o valor da posição de memória `<addr>` no ACC. | `LDA 14` |
| `ADD <addr>` | Add: Soma o valor da memória ao ACC.                                      | `ADD 15` |
| `SUB <addr>` | Subtract: Subtrai o valor da memória do ACC.                              | `SUB 10` |
| `STA <addr>` | Store: Armazena o valor do ACC na memória.                                | `STA 0`  |
| `JMP <addr>` | Jump: Salta para uma nova posição de memória.                             | `JMP 0`  |
| `OUT`        | Output: Exibe o valor do ACC no console.                                  | `OUT`    |
| `HLT`        | Halt: Finaliza a execução.                                                | `HLT`    |

- **Comentários**: Linhas iniciadas por `//` são ignoradas.
- **Dados**: Números sem instrução são carregados sequencialmente na memória.

---

## ⚙️ Como o Código Funciona

O aplicativo é desenvolvido em Flutter com Dart, seguindo boas práticas de arquitetura e componentização.

### 🗂 Estrutura do Projeto

- **`main.dart`**: Ponto de entrada da aplicação.
- **`lib/`**: Código-fonte principal.
  - `SAPSimulatorApp`: Widget raiz.
  - `SplashScreen`: Tela inicial com botão para iniciar.
  - `SAPHomePage`: Tela principal com a lógica do simulador.
  - `ParsedInstruction`: Classe que representa instruções compiladas.

### 🔧 Componentes Chave

#### `SAPSimulatorApp`
- Define o tema (teal + deepPurple).
- Usa Source Code Pro como fonte principal.

#### `SplashScreen`
- Fundo com gradiente estilizado.
- Botão "Iniciar" com transição para a `SAPHomePage`.

#### `SAPHomePage`
- Gerencia estados como registradores, memória, flags.
- Possui editor de texto, visualização dos blocos, memória e console.

#### Lógica de Execução

- `_compileCode()`: Compila o código digitado, valida e converte para instruções.
- `_executeStep()`: Executa uma instrução por vez, simulando operações e atualizando registradores.
- `_reset()`: Reinicia os estados do simulador.
- `_toggleRun()`: Alterna entre execução contínua e pausa.
- `_sapBlock()`: Mostra cada bloco do datapath com animações.
- `_buildInstructionLine()`: Renderiza cada instrução com destaque para a atual.

---

## 🎨 Estilização e Design

- **Paleta de Cores**: Teal + Deep Purple.
- **Fonte**:
- ![image](https://github.com/user-attachments/assets/1ea75c79-3af4-4bd3-aa87-27bacf3e1b8d)
![image](https://github.com/user-attachments/assets/e5b0daab-1d45-403a-a4fb-6b2c8c9cf95a)
![image](https://github.com/user-attachments/assets/b7fe347f-a65c-4bc8-966c-83001fac9727)
![image](https://github.com/user-attachments/assets/2bd81dbe-ccbe-47ef-b75b-671c2990b3ce)
![app](https://github.com/user-attachments/assets/495ba707-1b53-4b2f-a047-a3991767a718)


link: https://anaa-5ef90.web.app/

![image](https://github.com/user-attachments/assets/ab4dfae8-432f-4d59-91c5-9a0ac9f1416a)
![image](https://github.com/user-attachments/assets/dc9ee45f-7bac-4121-b9bc-3f3bc1052405)


📄 Documento de Interface de Usuário
🖥️ Interface: Login
1. Leiaute sugerido

📌 (Cole aqui a imagem do layout da tela de Login)

[ INSERIR IMAGEM AQUI ]
2. Relacionamentos com outras interfaces

Agenda

Painel do Administrador

3. Campos
Nº	Nome	Descrição	Valores válidos	Formato	Tipo	Restrições
1	Email	Email do usuário	Emails válidos	Texto	String	Obrigatório
2	Senha	Senha de acesso	Qualquer	Texto	String	Obrigatório
4. Comandos
Nº	Nome	Ação	Restrições
1	Entrar	Valida login	Dados obrigatórios
🖥️ Interface: Agenda
1. Leiaute sugerido

📌 (Cole aqui a imagem do layout da Agenda)

[ INSERIR IMAGEM AQUI ]
2. Relacionamentos com outras interfaces

Cadastro de Paciente

Detalhe do Paciente

3. Campos
Nº	Nome	Descrição	Valores válidos	Tipo	Restrições
1	Data	Data da agenda	Datas válidas	Date	Obrigatório
2	Horário	Horário da sessão	00:00–23:59	Time	Obrigatório
3	Paciente	Nome do paciente	Texto	String	Deve existir
4	Tipo	Tipo de sessão	Sessão / Entrevista	String	Obrigatório
4. Comandos
Nº	Nome	Ação
1	Nova sessão	Abre agendamento
2	Editar	Edita sessão
3	Cancelar	Remove sessão
🖥️ Interface: Pacientes
1. Leiaute sugerido

📌 (Cole aqui a imagem da tela de Pacientes)

[ INSERIR IMAGEM AQUI ]
2. Relacionamentos com outras interfaces

Detalhe do Paciente

3. Campos
Nº	Nome	Descrição	Tipo	Restrições
1	Nome	Nome do paciente	String	Obrigatório
2	Telefone	Contato	String	Opcional
3	Última sessão	Data da última sessão	Date	-
4. Comandos
Nº	Nome	Ação
1	Buscar	Filtra pacientes
2	Novo paciente	Abre cadastro
3	Visualizar	Abre ficha
🖥️ Interface: Detalhe do Paciente
1. Leiaute sugerido

📌 (Cole aqui a imagem da tela de Detalhe do Paciente)

[ INSERIR IMAGEM AQUI ]
2. Relacionamentos com outras interfaces

Agenda

Pacientes

3. Campos
Nº	Nome	Descrição	Tipo
1	Nome	Nome completo	String
2	CPF	Documento	String
3	Telefone	Contato	String
4	Histórico	Dados clínicos	Texto
4. Comandos
Nº	Nome	Ação
1	Nova evolução	Adiciona registro
2	Anexar	Adiciona documento
🖥️ Interface: Eventos
1. Leiaute sugerido

📌 (Cole aqui a imagem da tela de Eventos)

[ INSERIR IMAGEM AQUI ]
2. Relacionamentos com outras interfaces

Criar Evento

3. Campos
Nº	Nome	Descrição	Tipo
1	Nome	Nome do evento	String
2	Data	Data do evento	Date
3	Vagas	Quantidade de vagas	Int
4	Status	Disponível / Lotado	String
4. Comandos
Nº	Nome	Ação
1	Criar evento	Abre formulário
2	Visualizar	Ver detalhes
🖥️ Interface: Criar Evento
1. Leiaute sugerido

📌 (Cole aqui a imagem da tela de Criar Evento)

[ INSERIR IMAGEM AQUI ]
2. Relacionamentos com outras interfaces

Eventos

3. Campos
Nº	Nome	Descrição	Tipo
1	Nome	Nome do evento	String
2	Data	Data do evento	Date
3	Vagas	Quantidade de vagas	Int
4	Descrição	Detalhes do evento	Texto
4. Comandos
Nº	Nome	Ação
1	Criar	Salva evento
🖥️ Interface: Perfil
1. Leiaute sugerido

📌 (Cole aqui a imagem da tela de Perfil)

[ INSERIR IMAGEM AQUI ]
2. Relacionamentos com outras interfaces

Login

3. Campos
Nº	Nome	Descrição	Tipo
1	Nome	Nome do usuário	String
2	Email	Email do usuário	String
3	Tipo	Admin / Profissional	String
4. Comandos
Nº	Nome	Ação
1	Editar	Atualiza dados
2	Sair	Log

