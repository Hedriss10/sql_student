### **Porque SQL ?**

SQL (**Structured Query Language**) é uma linguagem de programação utilizada para gerenciar e manipular dados em bancos de dados relacionais. É uma linguagem padrão para bancos de dados relacionais e é usada para criar, modificar e consultar dados em tabelas.

Com **SQL**, é possível criar tabelas, inserir dados, atualizar registros, excluir registros e consultar dados em um banco de dados. A linguagem é usada em uma ampla variedade de aplicativos, desde sistemas de gerenciamento de conteúdo até aplicativos de negócios e finanças.




## Descomplicando Comandos 

<img src="image/../Image/comandos.png"></img>




**FROM**

> O comando FROM irá indicar, como o próprio nome sugere, de onde iremos tirar os dados. Ele se refere à Tabela de origem dos dados.
> 
> 
> *Por exemplo, vamos supor que temos as tabelas:*
> 
> *`vendas`, `funcionarios`, `estoque`*
> 
> *e queremos selecionar todos os dados da tabela `vendas`.*
> 
> *Nossa query seria:*
> 
> *`SELECT *`*
> 
> *`FROM vendas`*
> 
> *Para puxar dados de uma tabela diferente, basta mudar a tabela:*
> 
> *`SELECT *`*
> 
> *`FROM funcionarios`*
> 

**WHERE**

> O comando WHERE vai ser utilizado para fazer um filtro, onde os dados que serão puxados deverão obedecer à condição estabelecida por ele.
> 
> 
> *Por exemplo:*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE neighbourhood_group = 'Manhattan'`*
> 
> *Acima, como nossa condição é um String, percebemos que precisamos utilizar as aspas. Em alguns sistemas, aspas duplas também será possíveis.*
> 
> *Quando a condição é um valor numérico, não utilizaremos as aspas.*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE minimum_nights = 2`*
> 
> *Abaixo, podemos ver uma lista de operadores que podemos utilizar quando estivermos trabalhando com o `WHERE`:*
> 
> *`=` - Igual*
> 
> *`>` - Maior*
> 
> *`<` - Menor*
> 
> *`>=` - Maior ou Igual*
> 
> *`<=` - Menor ou Igual*
> 
> *`<>` - Não igual (Em algumas sistemas podemos utilizar `!=`)*
> 
> *`BETWEEN` - Entre um certo range*
> 
> *`LIKE` - Busca por um padrão*
> 
> *`IN` - Especifica vários possíveis valores dentro de uma coluna*
> 

**ORDER BY**

> Como o próprio nome sugere, o ORDER BY é usado para ordenar os resultados da nossa query. Por padrão, os resultados são colocados em ordem ascendente, mas podem ser colocados em ordem descendente, usando o comando DESC.
> 
> 
> *Query de exemplo:*
> 
> *`SELECT *`*
> 
> *`FROM data`*
> 
> *`ORDER BY price DESC`*
> 

**LIMIT**

> Mais uma vez, lembramos o quanto o SQL pode ser literal. O LIMIT nada mais é do que um limite. Podemos limitar o número de linhas que vamos receber da nossa Query.
> 
> 
> *Vamos supor que queremos apenas 10 entradas do nosso conjunto de imóveis em Manhattan, podemos fazer a seguinte query:*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE neighbourhood_group = 'Manhattan'`*
> 
> *`LIMIT 10;`*
> 

**Operadores Aritméticos**

> O SQL também nos permite trabalhar com operadores aritméticos. Aqui, vamos utilizar dos mesmos que já conhecemos em Python.
> 
> 
> *`+` - Adição*
> 
> -  `-`  Subtração
> -  `*`  Multiplicação
> 
> *`/`  - Divisão*
> 
> *`%` - Modulo*
> 
> *Podemos fazer uso desses operadores tanto no `SELECT`, para que retorne uma nova coluna de consulta com a nossa operação, quanto no `WHERE` para satisfazer determinada condição. Também podemos fazer as duas coisas.*
> 

**Operadores Lógicos**

> Mais uma vez, assim como no Python, podemos utilizar operadores lógicos em nossas queries para diferentes funções.
> 
> 
> *Segue abaixo uma lista dos operadores lógicos e suas funções:*
> 
> *`ALL` - True se todos os valores da query satisfazem a condição*
> 
> *Pode ser usada, por exemplo, para puxar todas as entradas de uma coluna que estão preenchidas.*
> 
> *`SELECT ALL name`*
> 
> *`FROM data`*
> 
> *`WHERE TRUE;`*
> 
> *`AND` - True se todas as condições separadas por AND são verdadeiras*
> 
> *A ideia aqui é usar dentro do WHERE mais de uma condição a ser obedecida.*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE neighbourhood_group = 'Manhattan' AND price < 100;`*
> 
> *`OR` - True se alguma das condições separadas por OR são verdadeiras*
> 
> *Da mesma formas que colocamos condições com o OR no WHERE, podemos utilizar o OR.*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE price <100 AND neighbourhood_group = 'Manhattan' OR neighbourhood_group= 'Brooklyn';`*
> 
> *`NOT` - Mostra regristros caso a condição não seja verdadeira*
> 
> *Já o NOT, podemos utilizar para excluir registros de nossa busca.*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE NOT neighbourhood_group = 'Manhattan' AND price < 100;`*
> 
> *`IN` - True se o operador está dentro da lista de expressões*
> 
> *O IN nos permite buscar vários valores dentro de um WHERE. Pode ser um atalho para utilizar vários OR*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE neighbourhood IN ('Astoria', 'Long Island City', 'Flatbush', 'Jackson Heights');`*
> 
> *Também poderíamos acrescentar um NOT a esse comando para excluir entradas com esses valores.*
> 
> *`BETWEEN`- True se o operador estiver dentro do range de comparação*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE price BETWEEN 100 and 200;`*
> 
> *`LIKE` - True se o operador é compatível a um padrão Com esse operador conseguimos investigar mais a fundo nosso conjunto de dados. Esse operador normalmente é utilizado junto do sinal `%` e `_`. Por exemplo, para retornar todos os donos de anúncios que começam com a letra A:*
> 
> *`SELECT * FROM data`*
> 
> *`WHERE host_name LIKE 'A%'`*
>

<a href="https://raw.githubusercontent.com/rafaelnduarte/sigmoidal_data/master/data.csv"><strong>Clica aqui: Dataset<strong/></a>
