-- 1) Quantos chamados foram abertos no dia 01/04/2023?
-- Resposta: 73 chamados.
-- Query:
SELECT COUNT(*) AS quantidade_chamados FROM datario.administracao_servicos_publicos.chamado_1746 
WHERE DATE(data_inicio) = '2023-04-01';


-- 2) Qual o tipo de chamado que teve mais teve chamados abertos no dia 01/04/2023?
-- Resposta: Poluição Sonora.
-- Query:
SELECT tipo FROM datario.administracao_servicos_publicos.chamado_1746 
WHERE DATE(data_inicio) = '2023-04-01'
GROUP BY tipo
ORDER BY COUNT(*) DESC
LIMIT 1;


-- 3) Quais os nomes dos 3 bairros que mais tiveram chamados abertos nesse dia?
-- Resposta: Engenho de Dentro, Leblon, Campo Grande.
-- Query:
SELECT bairros.nome as nome_bairro FROM datario.administracao_servicos_publicos.chamado_1746 AS chamados
JOIN datario.dados_mestres.bairro as bairros ON chamados.id_bairro = bairros.id_bairro
WHERE DATE(data_inicio) = '2023-04-01'
GROUP BY bairros.nome
ORDER BY COUNT(*) DESC
LIMIT 3;


-- 4) Qual o nome da subprefeitura com mais chamados abertos nesse dia?
-- Resposta: Zona Norte.
-- Query:
SELECT bairros.subprefeitura as nome_subprefeitura FROM datario.administracao_servicos_publicos.chamado_1746 AS chamados
JOIN datario.dados_mestres.bairro as bairros ON chamados.id_bairro = bairros.id_bairro
WHERE DATE(data_inicio) = '2023-04-01'
GROUP BY bairros.subprefeitura
ORDER BY COUNT(*) DESC
LIMIT 1;


-- 5) Existe algum chamado aberto nesse dia que não foi associado a um bairro ou subprefeitura na tabela de bairros? Se sim, por que isso acontece?
-- Resposta: Existe 1 chamado que não possui id_bairro (id 18516246), logo, não possui bairro associado. Isso se deve pelo fato de ser uma chamada do tipo Ônibus, sendo assim, não possui necessariamente uma localização fixa para o chamado.
-- Query:
SELECT * FROM datario.administracao_servicos_publicos.chamado_1746 
WHERE DATE(data_inicio) = '2023-04-01' AND id_bairro IS NULL;
