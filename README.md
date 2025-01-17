# Análise Exploratória do portal de dados DATA.RIO
![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)
![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)


## Descrição
Análise exploratória realizada para o desafio técnico para a vaga de Cientista de Dados Júnior no Escritório Municipal de Dados do Rio de Janeiro, pelo participante Eduardo Amorim dos Santos Araujo.

O objetivo do desafio é realizar análises sobre os chamados abertos no município do Rio de Janeiro utilizando as bases de dados públicas disponibilizadas no portal [DATA.RIO](https://datariov2-pcrj.hub.arcgis.com) e responder as questões de pesquisa contidas no arquivo [perguntas_desafio.md](perguntas_desafio.md).

## Configuração do projeto

### Tecnologias

A análise foi realizada usando Python 3.9, com as bibliotecas basedosdados 1.6.11 e pandas 1.5.3. Foi utilizado o Google Cloud Platform para acesso às bases de dados públicas do DATA.RIO.

Para a construção dos notebooks, foi escolhida a plataforma Jupyter Notebook.

Por fim, a ferramenta PowerBi Desktop foi utilizada para o desenvolvimento das visualizações.

### Instruções de execução (Python)

Primeiramente, após clonar o repositório, é necessário criar o ambiente virtual e instalar as dependências do projeto Python:
> python -m venv venv
> 
> pip install -r requirements.txt

Para que seja possível executar as análises, é necessário criar um projeto no GCP com acesso ao DATA.RIO. Para isso, siga as instruções contidas [aqui](https://docs.dados.rio/tutoriais/como-acessar-dados/).

Após a criação do projeto, será necessário adicionar o ID do seu projeto como uma variável de ambiente. Para isso, na raiz do projeto crie um arquivo chamado .env e adicione o ID como uma variável de ambiente chamada **ID_PROJETO**. É possível encontrar um arquivo de exemplo em [.env_example](.env_example).

Por fim, para executar as análises realizadas via Python, acesse o [notebook](analise_python.ipynb) e execute todas as células.

### Visualização dos dados

As visualizações podem ser encontradas no arquivo [analise_data_rio.pbix](analise_data_rio.pbix). Para a construção das visualizações, foram utilizados os dados de chamados abertos no período entre 01/01/2022 e 31/12/2023. 

Devido à grande quantidade de dados na tabela `chamado_1746`, os dados foram exportados via arquivos CSVs utilizando Pandas. O notebook desenvolvido para exportação dos dados pode ser encontrado [aqui](exportacao_arquivos.ipynb).

Por fim, foi utilizado um [arquivo](https://www.data.rio/datasets/dc94b29fc3594a5bb4d297bee0c9a3f2/explore) GeoJSON contendo o limite de bairros do município do Rio de Janeiro para a construção de um visual de mapa de formas.

<img src="https://github.com/Dudsxkap/emd-desafio-junior-data-scientist/assets/29288177/bed0ad57-4756-40f5-8c09-9c6429b46f39" width="700" height="390">

<img src="https://github.com/Dudsxkap/emd-desafio-junior-data-scientist/assets/29288177/a75263d9-ad1f-429f-ac6b-75805466daa4" width="700" height="390">
