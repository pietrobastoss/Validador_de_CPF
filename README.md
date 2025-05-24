NOMES: PIETRO BASTOS, LUCAS MIRANDA FERNANDEZ, EDISON GOMES GUIMARÃES JUNIOR. 

# Validador_de_CPF
Configurar o ambiente de trabalho no GitHub e realizar a primeira exibição de um CPF no programa.

# Desenvolvimento do Projeto

## Checklist de Etapas

Cada etapa deverá ser documentada corretamente nas mensagens de commit, usando uma descrição como:
**`etapa 1: mostrando o CPF com escreva`** ou **`e1: mostrando o CPF com escreva`**

## Etapa 1: Configuração Inicial

### Objetivo
Configurar o ambiente de trabalho no GitHub e realizar a primeira exibição de um CPF no programa.

### Tarefas
- [X] Criar uma conta no GitHub (caso ainda não possua).
- [X] Criar um novo repositório no GitHub.
- [X] Adicionar:
    - Um arquivo `README.md`, descrevendo o projeto e listando estas etapas.
    - Um arquivo de **licença** (por exemplo, MIT License).
    - Um arquivo de código `.por`.
- [X] Exibir um CPF usando o comando [`escreva`](https://github.com/gutohertzog/tds-senac-tech/blob/main/uc2-desenvolver-algoritmos/1.portugol/entrada-saida.md#fun%C3%A7%C3%A3o-escreva).
## Etapa 2: Uso de Variáveis

### Objetivo
Armazenar e exibir o CPF formatado utilizando variáveis.

### Tarefas
- [x] Criar **quatro variáveis inteiras**.
- [x] Atribuir valores a essas variáveis (valores fixos).
- [x] Exibir o CPF formatado a partir dessas variáveis.

## Etapa 3: Entrada de Dados

### Objetivo
Permitir a entrada de dados pelo usuário e exibir o CPF formatado.

### Tarefas
- [x] Ler valores digitados para **quatro variáveis inteiras**.
- [x] Exibir o CPF formatado a partir dos valores lidos.

## Etapa 4: Validando Positivos

### Objetivos
Valide para que os números digitados sejam maiores que zero.

### Tarefas
- [x] Ler apenas valores maiores que zero.
- [x] Exibir o CPF formatado a partir dos valores lidos.

## Etapa 5: Entrando Texto

### Objetivos
Receba um CPF completo (com pontos e traço) e mostre ele separado em 2 partes.

### Tarefas
- [X] Coloque o nome dos integrantes estar na parte inicial do README.md.
- [X] Todos os integrantes devem ter suas contas no GitHub.
- [X] Leia um CPF completo do usuário (`XXX.XXX.XXX-YY`).
- [X] Separe os 9 números do CPF dos 2 Dígitos Verificadores em duas variáveis.
- [X] Exiba as duas variáveis separadamente.

## Etapa 6: Validando Entrada

### Objetivos
Receba um CPF completo e valide ele.

### Tarefas
- [x] Leia um CPF completo do usuário.
- [x] Valide para que o CPF esteja nos formatos `XXX.XXX.XXX-YY` ou `XXXXXXXXXYY`.

## Etapa 7: Dígito 1

### Objetivos
Calcular e encontrar o Primeiro Dígito Verificador - PDV.

### Tarefas
- [x] Receba um CPF válido do usuário (formatos suportados `XXX.XXX.XXX-YY` ou `XXXXXXXXXYY`).
- [x] Se o formato não for válido, encerre o programa.
- [x] Calcule o [Primeiro Dígito Verificador](#cálculo-do-primeiro-dígito) conforme especificado.
- Ao final, mostre :
    - [x] O CPF conforme foi digitado;
    - [x] O Primeiro Dígito Verificador encontrado;
    - [x] O resultado da comparação do PDV encontrado com o PDV do CPF digitado;
- [x] A atualização do código tem que ser feito por um integrante que ainda não realizou um [`Pull Request`](https://docs.github.com/pt/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork);

## Etapa 8: Dígito 2

### Objetivos
Calcular e encontrar o Segundo Dígito Verificador - SDV.

### Tarefas
- [x] Receba um CPF válido do usuário (formatos suportados `XXX.XXX.XXX-YY` ou `XXXXXXXXXYY`).
- [x] Se o formato não for válido, encerre o programa.
- [x] Calcule o [Primeiro Dígito Verificador](#cálculo-do-primeiro-dígito) conforme especificado.
- [x] Calcule o [Segundo Dígito Verificador](#cálculo-do-segundo-dígito) conforme especificado.
- Ao final, mostre :
    - [x] O CPF conforme foi digitado;
    - [x] O Primeiro Dígito Verificador encontrado;
    - [x] O Segundo Dígito Verificador encontrado;
    - [x] O resultado da comparação do PDV encontrado com o PDV do CPF digitado;
    - [x] O resultado da comparação do SDV encontrado com o SDV do CPF digitado;
    - [x] Uma mensagem informando se o CPF é válido ou não;


---



# Como usar checkbox no README

Copie a seção `Desenvolvimento do Projeto` direto no seu `README.md`.<br>
Marque as tarefas concluídas trocando `[ ]` por `[x]` à medida que for avançando.

Exemplo antes e depois de completar uma tarefa:

```markdown
- [ ] Criar um novo repositório no GitHub <--- antes de realizar a tarefa
- [x] Criar um novo repositório no GitHub <--- após realizar a tarefa
```
