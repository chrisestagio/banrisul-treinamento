### Linguagem de Consulta a Dados (DQL) e a Teoria dos Conjuntos

A **Linguagem de Consulta a Dados (DQL)** é uma parte fundamental do SQL, utilizada para realizar consultas em bancos de dados relacionais. No entanto, a DQL pode ser melhor compreendida quando analisada sob a ótica da **Teoria dos Conjuntos**, que oferece um modelo matemático subjacente para operações de manipulação de dados.

Na teoria dos conjuntos, podemos ver as tabelas de um banco de dados como **conjuntos de registros** e as operações da DQL como formas de manipular esses conjuntos. Neste conteúdo, vamos explorar como a DQL se baseia nos conceitos da teoria dos conjuntos, abordando as operações mais comuns, como seleção, projeção, união, interseção e diferença.

---

### 1. **Tabelas como Conjuntos**

Na teoria dos conjuntos, um **conjunto** é uma coleção de elementos. Em SQL, uma **tabela** pode ser vista como um conjunto onde cada **linha** (ou tupla) é um elemento desse conjunto. Cada **coluna** é uma propriedade que define cada elemento do conjunto.

Por exemplo, considere a tabela **EXTRATO**:

| ID  | NUMERO_CONTA | NOME_TITULAR |
|-----|-------------|-------------|
| 1   | 915201       | Rory Fry  |
| 2   | 67890       | Amari Black |

Essa tabela pode ser vista como um conjunto:

- **EXTRATO** = { (1, 915201, Rory Fry), (2, 67890, Amari Black) }

Cada linha da tabela é um elemento do conjunto.

---

### 2. **Operações de Conjuntos em SQL**

As operações de consulta em SQL podem ser mapeadas para operações clássicas de conjuntos. Vamos explorar algumas dessas operações:

---

#### **2.1. Seleção (SELECT - WHERE)**

A **seleção** na teoria dos conjuntos corresponde a uma operação de filtro, que retorna um subconjunto de registros que atendem a uma condição específica. No SQL, isso é feito com a cláusula `SELECT` combinada com a cláusula `WHERE`.

**Exemplo:**

Suponha que queremos selecionar apenas o registro do titular "Rory Fry" da tabela **EXTRATO**.

```sql
SELECT * FROM EXTRATO WHERE NOME_TITULAR = 'Rory Fry';
```

**Teoria dos Conjuntos:**

- Conjunto original: EXTRATO = { (1, 915201, Rory Fry), (2, 67890, Amari Black) }
- Subconjunto selecionado: { (1, 915201, Rory Fry) }

Essa operação retorna um subconjunto com base em uma condição.

---

#### **2.2. Projeção (SELECT - Sem WHERE)**

A **projeção** na teoria dos conjuntos seleciona apenas certos atributos (ou colunas) de um conjunto. No SQL, isso é realizado através da cláusula `SELECT`, onde especificamos as colunas que queremos exibir.

**Exemplo:**

Queremos projetar apenas os nomes dos titulares da tabela **EXTRATO**.

```sql
SELECT NOME_TITULAR FROM EXTRATO;
```

**Teoria dos Conjuntos:**

- Conjunto original: EXTRATO = { (1, 915201, Rory Fry), (2, 67890, Amari Black) }
- Projeção: { (Rory Fry), (Amari Black) }

Nesse caso, retornamos um conjunto contendo apenas os nomes dos titulares.

---

#### **2.3. União (UNION)**

A **união** de dois conjuntos na teoria dos conjuntos combina todos os elementos de ambos os conjuntos, removendo duplicatas. No SQL, a operação `UNION` combina os resultados de duas ou mais consultas, também eliminando valores duplicados.

**Exemplo:**

Suponha que temos duas tabelas: **EXTRATO_BRASIL** e **EXTRATO_ARGENTINA**, e queremos listar todos os titulares, independentemente do país.

```sql
SELECT NOME_TITULAR FROM EXTRATO_BRASIL
UNION
SELECT NOME_TITULAR FROM EXTRATO_ARGENTINA;
```

**Teoria dos Conjuntos:**

- **EXTRATO_BRASIL** = { (Rory Fry), (Amari Black) }
- **EXTRATO_ARGENTINA** = { (Carlos Gómez), (Amari Black) }

**União:** { (Rory Fry), (Amari Black), (Carlos Gómez) }

A operação `UNION` combina ambos os conjuntos de registros e elimina duplicatas (no caso, "Amari Black").

---

### 3. **Funções Agregadas como Operações de Conjunto**

As **funções agregadas** em SQL também podem ser vistas como operações em conjuntos. Elas realizam cálculos em subconjuntos de registros.

- **SUM(VALOR)**: Soma todos os elementos do conjunto de valores.
- **AVG(VALOR)**: Calcula a média dos elementos do conjunto de valores.
- **COUNT()**: Conta o número de elementos do conjunto.

Essas operações são fundamentais para gerar resumos dos dados.

---