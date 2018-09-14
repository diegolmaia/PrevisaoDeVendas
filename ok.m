%inicializa  Matriz
	t = load('dados_televisores.txt');
	d_previsao = load('d_previsao.txt');

%normaliza os dados
	d_previsao = 1e-5*d_previsao;
	t=1e-5*t;
	[x,d] = recebe_valoresV2(t);

%>>>>>Treina a REDE RNA
	z_rna=mlp(x,d);

%>>>>>Treina a REDE FUZZY
	z_fuzzy=fuzzy(x,d);



%>>>>>Organiza dados
	x_previsao = x(:, end);
	organiza_dados(x, d,x_previsao, d_previsao, z_fuzzy, z_rna)
	
