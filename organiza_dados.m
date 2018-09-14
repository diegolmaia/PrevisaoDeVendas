function [] = organiza_dados(x, d, x_previsao, d_previsao, z_fuzzy, z_rna)
	
	%>>>>> Plot de dados
	res(:,1)=sim(z_rna,x);
	res(:,2)=evalfis(x',z_fuzzy);
	
	plot(res(:,1)*1e5,'g'); % resposta rna
	hold on
	plot(res(:,2)*1e5,'r'); % resposta fuzzy
	hold on
	plot(d*1e5, 'b'); % esperado
	legend('RNA');
	legend('FUZZY');
	legend('Esperado');
	
	Soma_erro_RNA = sum(abs(res(:,1)-d')*1e5);
	Soma_erro_FUZZY= sum(abs(res(:,2)-d')*1e5);
	Soma_erro_RNA
	Soma_erro_FUZZY

	pause

	%d1 = d1*5;
	%z_fuzzy = z_fuzzy*5;
	res_previsao = zeros(12,5);

	for i= 1:12
		rna_previsao = sim(z_rna,x_previsao);
		fuz_previsao = evalfis(x_previsao',z_fuzzy);
		
		x_previsao = previsao(x_previsao);
		x_previsao(12,1) = fuz_previsao;
		
		res_previsao(i,1) = rna_previsao
		res_previsao(i,2) = fuz_previsao
	end

	res_previsao(:,3) = d_previsao;
	res_previsao(:,4) = abs(res_previsao(:,3)-res_previsao(:,1)); % erro de previsao do rna
	res_previsao(:,5) = abs(res_previsao(:,3)-res_previsao(:,2)); % erro de previsao do fuzzy
	
	%dp_previsao = std(res_previsao(:,3))

	subplot(1,2,1);
	plot(res_previsao(:,1)*1e5,'g'); % resposta rna
	hold on
	plot(res_previsao(:,2)*1e5,'r'); % resposta fuzzy
	hold on
	plot(res_previsao(:,3)*1e5, 'b'); % esperado
	legend('RNA');
	legend('FUZZY');
	legend('Esperado');
	
	subplot(1,2,2);
	plot(res_previsao(:,4), 'g'); %erro rna
	hold on
	plot(res_previsao(:,5), 'r'); %erro fuzzy
	legend('Erro do RNA');
	legend('Erro do FUZZY');
	
	Soma_erro_RNA = sum(abs(res_previsao(:,4))*1e5);
	Soma_erro_FUZZY = sum(abs(res_previsao(:,5))*1e5);
	Soma_erro_RNA
	Soma_erro_FUZZY



