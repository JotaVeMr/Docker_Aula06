# Projeto: Ambiente Web com Docker Compose

Este projeto utiliza Docker Compose para orquestrar um ambiente de desenvolvimento web completo, contendo três serviços: Apache + PHP, MySQL e phpMyAdmin.

## Serviços

* **Aplicação (Apache + PHP):** Acessível em `http://localhost`.
* **Banco de Dados (MySQL):** Serviço interno, não acessível externamente. Os dados são persistidos em um volume Docker.
* **phpMyAdmin:** Ferramenta de gerenciamento de banco de dados, acessível em `http://localhost:8080`.
    * **Login de Administrador:** `root` / `rootpassword`
    * **Login da Aplicação:** `user` / `pass`

## Como Executar

### Pré-requisitos

* Docker e Docker Compose instalados.

### Passos

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/Tatavitto/aula6-jovander.git](https://github.com/Tatavitto/aula6-jovander.git)
    cd aula6-jovander
    ```

2.  **Inicie os serviços:**
    Na pasta raiz do projeto, execute o comando:
    ```bash
    docker-compose up -d
    ```

3.  **Acesse os serviços:**
    * **Aplicação:** [http://localhost](http://localhost)
    * **phpMyAdmin:** [http://localhost:8080](http://localhost:8080)

4.  **Para parar o ambiente:**
    ```bash
    docker-compose down
    ```

## Repositório no Docker Hub

A imagem Docker utilizada neste projeto está disponível publicamente no Docker Hub:

**[https://hub.docker.com/r/tatavitto/aula6-jovander](https://hub.docker.com/r/tatavitto/aula6-jovander)**