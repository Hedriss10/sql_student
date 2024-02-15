# SQL Descomplicando a Linguagem

Estrutura de aprendizado ao SQL e conceitos avançados, tomei uma decisão em ficar totalmente especialista em SQL e com isso tive que obter bastante conhecimento com livros e cursos e até especialização nesse diretório você encontra as melhores práticas e abordagens para SQL de forma descomplicada.



### Conceito SQL 
Conceito SQL aprendi que sempre declaramos as experessão e valores quando queremos buscar alguma informação, muito simples mas na prática pode ser um pouco complicado, vamos entender de fato que as abordagens podem ser descomplicada, conforme fomos estudando, para montar relatório mais robusto iremos lidar com mais lógica de expressão, a grande ideia é sempre se perguntar como vou fazer as coisas. Veja a seguir a dicas de como lidar com os filtros das informações para montar seu relátorio em ``SQL``.

**Filtrando o problema**

- O João fala para o Analista de dados que quer um relátorio de quantas passagens foram compradas.

- O Fernando pede para o Analista á quantitativa de vendas do último mês.

- O Fábio pede para o Analista quanto custou os gastos com funcionários nos últimos anos.



Claramente é quase que impossível você desenvolver esses relátorios em Excel mesmo sabendo que irá que tratar o arquivo, buscar os dados em banco de produção, desenvolver e carregar os dados corretamente no Excel e com isso o SQL veio para justamente isso, muito simples explorar o dado mas a pergunta que fica **será mesmo que é possível lidar com os problemas?**.

Base isso vamos aprender a lidar com as informação de problemas, analise comigo a primeira pergunta!

Passagens = ``valor``

Compradas = ``Quantitativo`` 

Selecionamos a coluna passagens e somamos todas elas que foram comprada, observamos a descrição aonde encontramos se foram compradas ou não e obtemos a soma maxima.

Viu que não é apenas análisar temos que desenhar os processos veja a seguir o comando para selecionar uma expressão de alguma valor.



#### Comandao SELECT 
O comando SELECT ele é desenvolvido para selecioanar a sua expressão e com isso podemos selecionar sua colunas da suas tabelas e ter a reposta necessária veja o exemplo a seguir:

```sql
SELECT ['valor'] 
```
Com isso abordamos o conceito de selecionar o valor que queremos, mas se fomos rodar esse comando em qualquer IDE de código de SQL irá da erro, para pensar comigo tenho que atribuir mais uma funcionalidade que é o `FROM` veja o exemplo a seguir:

```sql
SELECT ['valor'] FROM ['base']
```
Conforme nosso comando ele irá selecionar o valor e se basear com a expresão da base ou do dado em sí.
