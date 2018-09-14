# Previsao De Vendas

Algoritmo em Matlab, utilizando a Lógica Fuzzy e RNA para previsão de vendas e fazendo um comparativo entre elas.  

Utilizamos uma base de dados real coletada do Instituto de Pesquisa Econômica Aplicada (IPEA) http://www.ipea.gov.br. A base de dados escolhida foi a quantidade mensal de vendas de TV a cores, no período de 01/1994 à 11/2002, ou seja, 107 meses. Foi utilizado o software
MatLab®, para implementação dos algoritmos.

Para ambas abordagens a previsão foi feita a partir de dados históricos de vendas do produto. Foram gerados modelos com dados de venda mensal, o agrupamento de 12 meses como entrada do sistema gera uma saída que é a previsão das vendas do 13o mês. Essa
saída gerada é inserida como o 12o mês da próxima entrada do sistema. O treinamento realizado pela rede neural e pela lógica fuzzy foi pelos algoritmos MLP (Perceptron Multilayer) e ANFIS, respectivamente. Ambos disponíveis no toolbox do MatLab.
