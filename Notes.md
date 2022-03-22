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

### Instalação do Azure Data Studio

Enquanto não existe uma verão flatpak do Azure Data Studio, eu estou utilizando a versão AUR [azuredatastudio-bin](https://aur.archlinux.org/packages/azuredatastudio-bin) no archlinux.
