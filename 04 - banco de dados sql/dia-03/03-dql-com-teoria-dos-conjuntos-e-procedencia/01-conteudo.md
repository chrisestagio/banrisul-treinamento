### Procedência das Operações do Conjunto em SQL

Em SQL, as operações de conjunto (como `UNION`, `INTERSECT` e `EXCEPT`) são essenciais para combinar resultados de múltiplas consultas. A compreensão da precedência dessas operações é fundamental para garantir que as consultas sejam executadas na ordem correta, evitando resultados inesperados. Neste tópico, vamos explorar a precedência das operações de conjunto e fornecer exemplos práticos.

---

### 1. **Operações de Conjunto**

As operações de conjunto permitem combinar os resultados de duas ou mais consultas SQL. As principais operações são:

- **UNION**: Combina os resultados de duas consultas, eliminando duplicatas.
- **UNION ALL**: Combina os resultados de duas consultas, incluindo duplicatas.
- **INTERSECT**: Retorna os registros que aparecem em ambas as consultas.
- **EXCEPT** (ou `MINUS` em alguns SGBDs): Retorna os registros que estão na primeira consulta, mas não na segunda.

### 2. **Procedência das Operações**

As operações de conjunto têm uma precedência específica que determina a ordem em que elas são avaliadas. A precedência é a seguinte:

1. **Operações de Conjunto (UNION, INTERSECT, EXCEPT)**
2. **Operadores de Comparação (como =, <, >, etc.)**
3. **Operadores Lógicos (AND, OR)**
4. **Operadores Matemáticos (+, -, *, /)**

### 3. **Exemplo de Uso das Operações de Conjunto**

Vamos considerar as tabelas **EXTRATO** e **REGISTRO**. Suponha que desejamos combinar resultados de duas consultas diferentes e aplicar uma operação de conjunto.

**Exemplo:**

```sql
SELECT NUMERO_CONTA
FROM EXTRATO
WHERE NOME_TITULAR = 'Rory Fry'

UNION

SELECT NUMERO_CONTA
FROM REGISTRO
WHERE VALOR > 100;
```

**Explicação:**

- O SQL primeiro executa cada consulta separadamente.
- Os resultados são então combinados com `UNION`, que elimina duplicatas.

### 4. **Exemplo com INTERSECT e EXCEPT**

```sql
SELECT NUMERO_CONTA
FROM EXTRATO
WHERE NOME_TITULAR = 'Rory Fry'

INTERSECT

SELECT NUMERO_CONTA
FROM REGISTRO
WHERE VALOR > 100;
```

**Explicação:**

- Este exemplo retorna as `NUMERO_CONTA` que aparecem em ambas as tabelas, atendendo aos critérios especificados.

```sql
SELECT NUMERO_CONTA
FROM EXTRATO
WHERE NOME_TITULAR = 'Rory Fry'

EXCEPT

SELECT NUMERO_CONTA
FROM REGISTRO
WHERE VALOR > 100;
```

**Explicação:**

- Aqui, retornamos as `NUMERO_CONTA` da tabela **EXTRATO** que não estão presentes na tabela **REGISTRO**.

### 5. **Uso de Parênteses para Controle de Procedência**

Para garantir que as operações sejam executadas na ordem desejada, os parênteses podem ser utilizados. Por exemplo:

```sql
SELECT NUMERO_CONTA
FROM EXTRATO
WHERE NOME_TITULAR = 'Rory Fry'

UNION

(SELECT NUMERO_CONTA
FROM REGISTRO
WHERE VALOR > 100
INTERSECT
SELECT NUMERO_CONTA
FROM REGISTRO
WHERE VALOR < 500);
```

**Explicação:**

- Neste exemplo, a consulta dentro dos parênteses é executada primeiro, combinando o resultado com `UNION`.