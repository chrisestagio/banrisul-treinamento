-- Resposta Exercício 1: consulta SQL que retorne os `NUMERO_CONTA` dos extratos onde o nome do titular é "Rory Fry" ou o valor do registro associado ao extrato é maior que 500, utilizando a operação `UNION`.
SELECT NUMERO_CONTA 
FROM EXTRATO
WHERE NOME_TITULAR = 'Rory Fry'

UNION

SELECT E.NUMERO_CONTA
FROM EXTRATO E
JOIN REGISTRO R ON E.ID = R.ID_EXTRATO
WHERE R.VALOR > 500;
