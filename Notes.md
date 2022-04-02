# Anotações

## Ambiente

### Instalação do SQL Server (Docker)

Gerei um arquivo `docker-compose.yaml` para facilitar a utilização do SQL Server, para utilizar o compose (após tudo instalado) basta rodar o seguinte comando no mesmo diretório onde o arquivo `docker-compose.yaml` está:

```bash
# Adicione --detach ou -d para que o docker não fique vinculado ao terminal
docker-compose up
```

E para parar:

```bash
docker-compose down
```

Obs.: caso exista algum problema ao inicializar o docker composer, tente executar o script `trocar-owner-sqlvolume.sh` para que o docker possa acessar o volume de dados do SQL Server.

### Instalação do Azure Data Studio

Enquanto não existe uma verão flatpak do Azure Data Studio, eu estou utilizando a versão AUR [azuredatastudio-bin](https://aur.archlinux.org/packages/azuredatastudio-bin) no archlinux.

## Hands-On-SQL Básico

Queries executadas na aula:

```sql
-- Criando um banco de dados
CREATE DATABASE DesenvolvedorIO;

-- Dropando o banco de dados
DROP DATABASE DesenvolvedorIO;

-- Forçando o banco a ser "SINGLE_USER" e depois dropando o banco
-- (truque para não ter problemas com o banco sendo utilizado por outra aplicação)
ALTER DATABASE DesenvolvedorIO SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DesenvolvedorIO;

-- Criando o banco de dados novamente
CREATE DATABASE DesenvolvedorIO;

-- Caso queira criar o banco definindo onde os arquivos estarão armazenados
-- pode utilizar o comando abaixo
CREATE DATABASE DesenvolvedorIO ON (Name = 'Dev_mdf', FILENAME = 'D:\teste.mdf')
LOG ON (Name = 'Dev_log', FILENAME = 'D:\teste.ldf')
```

### Criando uma tabela

Queries executadas na aula:

```sql
-- Criando uma tabela alunos (no banco DesenvolvedorIO)
CREATE TABLE alunos
(
    -- id chave primária com auto incremento
    id int PRIMARY KEY IDENTITY,
    -- nome até 80 caracteres não nulo
    nome VARCHAR(80) NOT NULL,
    -- cpf exatos 11 caracteres não nulo
    cpf CHAR(11) NOT NULL,
    -- data de nascimento do tipo date
    data_nascimento DATE,
    -- ativo do tipo bit (booleano) com valor padrão 1
    ativo bit DEFAULT 1
)
```
