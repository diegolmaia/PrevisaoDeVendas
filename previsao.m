function [x_prev] = previsao(x_previsao)
	x_prev = zeros(12,1);
	for i=1:11
		j = i+1;
		x_prev(i,1) = x_previsao(j,1);
	end
end