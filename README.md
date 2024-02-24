# Análise Exploratória do portal de dados DATA.RIO

## Descrição
Análise exploratória realizada para o desafio técnico para a vaga de Cientista de Dados Júnior no Escritório Municipal de Dados do Rio de Janeiro, pelo participante Eduardo Amorim dos Santos Araujo.

O objetivo do desafio é realizar análises sobre os chamados abertos no município do Rio de Janeiro utilizando as bases de dados públicas disponibilizadas no portal [DATA.RIO](https://datariov2-pcrj.hub.arcgis.com).

## Configuração do projeto

### Tecnologias

A análise foi realizada usando Python 3.9, com a biblioteca basedosdados 1.6.11. Foi utilizado o Google Cloud Platform para acesso às bases de dados públicas do DATA.RIO.

### Instruções de execução (Python)

Primeiramente, após clonar o repositório, é necessário criar o ambiente virtual e instalar as dependências do projeto Python:
> python -m venv venv
> 
> pip install -r requirements.txt

Para acessar o projeto no GCP, será necessário adicionar o ID do seu projeto como uma variável de ambiente. Para isso, na raiz do projeto crie um arquivo chamado .env e adicione o ID como uma variável de ambiente chamada **ID_PROJETO**. É possível encontrar um arquivo de exemplo em [.env_example](.env_example).

Por fim, para executar as análises realizadas via Python, acesse o [notebook](analise_python.ipynb) e execute todas as células.
