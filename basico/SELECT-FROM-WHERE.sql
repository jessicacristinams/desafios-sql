-- SQL Server, Postgres, Oracle, mySQL

-- comentários 

/*
para comentários com
quebra de linha
*/ 

/* 
= IGUAL A
<> DIFERENTE DE (ou pode ser usado também !=)

*/ 

SELECT coluna1,coluna2 -- seleciona somente as colunas1 e 2 da tabela --
FROM tabela

SELECT * -- seleciona todas as colunas da tabela --
FROM tabela

SELECT DISTINCT coluna1 -- seleciona a quantidade de dados únicos das linhas na coluna 1 --


SELECT coluna1,coluna2,coluna_n
FROM tabela
WHERE condicao

SELECT *
FROM production.Product
WHERE color = 'blue' or color = 'black' -- retorna todas as informações da tabela prodution.Product que contem produtos azul ou preto








/* Desafio 
Foi pedido pelo marketing uma relação de todos os empregados (employees)
que são casados (single=solteiro, married=casado) e são assalariados (salaried)
*/

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' AND SalariedFlag = 1










/* Desafio
Um usuário chamado Peter Crabs está devendo um pagamento,
consiga o e-mail dele para que possamos enviar uma cobrança!
(Você vai ter que usar a tabela person.person e depois a tabela person.emailadress ) */


SELECT *
FROM Person.person
WHERE FirstName = 'Peter' AND LastName = 'Crabs'

SELECT *
FROM person.EmailAddress
WHERE BusinessEntityID = 26 -- nesse caso pela consulta anterior foi localizado Peter Crabs e verificado que na coluna BusinessEntityID continha o ID dele
