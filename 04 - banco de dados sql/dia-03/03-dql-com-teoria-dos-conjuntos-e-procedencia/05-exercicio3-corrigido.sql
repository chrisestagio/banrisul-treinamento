-- Resposta Exercício 3: consulta SQL que retorne os `NUMERO_CONTA` de extratos cujo titular é "Daisy Marquez", e verifique se possue registros com valor menor que 200, utilizando a operação `EXCEPT`.
SELECT NUMERO_CONTA 
FROM EXTRATO
WHERE NOME_TITULAR = 'Daisy Marquez'

EXCEPT

SELECT E.NUMERO_CONTA
FROM EXTRATO E
JOIN REGISTRO R ON E.ID = R.ID_EXTRATO
WHERE R.VALOR < 200;