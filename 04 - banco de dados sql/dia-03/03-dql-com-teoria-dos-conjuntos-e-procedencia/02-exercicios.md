## Exercícios de Procedência das Operações de Conjunto

**Lembrete: em todas as queries que mencionarem tabelas do sistema PXC é necessário adicionar o prefixo "PXC." ao nome da tabela. Por exemplo, a tabela "EXTRATO" se torna "PXC.EXTRATO".**


#### **Exercício 1: União de Consultas**
Escreva uma consulta SQL que retorne os `NUMERO_CONTA` dos extratos onde o nome do titular é "Rory Fry" ou o valor do registro associado ao extrato é maior que 500, utilizando a operação `UNION`.

---

#### **Exercício 2: Intersecção de Consultas**
Crie uma consulta SQL que retorne os `NUMERO_CONTA` que aparecem tanto na tabela **EXTRATO** para titulares chamados "Amari Black" quanto na tabela **REGISTRO** para registros com valor maior que 900, utilizando a operação `INTERSECT`.

---

#### **Exercício 3: Diferença de Conjuntos**
Escreva uma consulta SQL que retorne os `NUMERO_CONTA` de extratos cujo titular é "Daisy Marquez", mas que não possuem registros com valor menor que 200, utilizando a operação `EXCEPT`.

---

#### **Exercício 4: União com Intersecção**
Crie uma consulta SQL que retorne os `NUMERO_CONTA` dos extratos onde o titular é "Rory Fry" ou "Amari Black", e faça uma intersecção com os extratos que possuem registros de valor maior que 300. Utilize as operações `UNION` e `INTERSECT`.

---

#### **Exercício 5: Intersecção com Diferença**
Escreva uma consulta SQL que retorne os `NUMERO_CONTA` de extratos cujos titulares são "Kameron York" e "Ryland Kelly", mas que não possuem registros com valor entre 100 e 500. Utilize as operações `INTERSECT` e `EXCEPT`.

---

#### **Exercício 6: Diferença de Conjuntos com União**
Escreva uma consulta SQL que retorne os `NUMERO_CONTA` de extratos cujos titulares são "Rory Fry" e que não possuem registros com valor menor que 1000, e faça uma união com os `NUMERO_CONTA` de extratos onde o titular é "Amari Black". Utilize as operações `EXCEPT` e `UNION`.

---

#### **Exercício 7: Intersecção em Subconsulta**
Crie uma consulta SQL que retorne os `NUMERO_CONTA` de extratos cujos titulares são "Kameron York" e que têm um registro associado cujo valor está entre 500 e 1000. Use uma subconsulta para selecionar os registros e depois faça a intersecção com a tabela **EXTRATO**.

---

#### **Exercício 8: Uso de Parênteses com UNION e INTERSECT**
Escreva uma consulta SQL que retorne os `NUMERO_CONTA` de extratos cujo titular é "Kameron York", faça a intersecção com os extratos que possuem registros de valor maior que 300, e depois faça a união com os extratos cujo titular é "Daisy Marquez". Utilize corretamente os parênteses para garantir a precedência adequada.

---

#### **Exercício 9: Consultas Aninhadas com EXCEPT**
Crie uma consulta SQL que retorne os `NUMERO_CONTA` de extratos que possuem um registro com valor maior que 500, exceto aqueles que também possuem um registro com valor menor que 100. Utilize uma subconsulta com `EXCEPT` para filtrar os resultados.

---

#### **Exercício 10: Operações Múltiplas (UNION, INTERSECT, EXCEPT)**
Escreva uma consulta SQL que retorne os `NUMERO_CONTA` de extratos cujo titular é "Ryland Kelly", faça a união com extratos que possuem registros de valor maior que 700, interseccione com extratos que possuem o tipo de registro "SAIDA", e finalmente exclua os que possuem registros com valor menor que 200. Utilize as operações `UNION`, `INTERSECT` e `EXCEPT`.

---