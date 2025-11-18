-- Resposta Exercício 2: consulta SQL que retorne os `NUMERO_CONTA` que aparecem tanto na tabela **EXTRATO** para titulares chamados "Amari Black" quanto na tabela **REGISTRO** para registros com valor maior que 1000, utilizando a operação `INTERSECT`.
SELECT NUMERO_CONTA 
FROM EXTRATO
WHERE NOME_TITULAR = 'Amari Black'

INTERSECT

SELECT E.NUMERO_CONTA
FROM EXTRATO E
JOIN REGISTRO R ON E.ID = R.ID_EXTRATO
WHERE R.VALOR > 900;