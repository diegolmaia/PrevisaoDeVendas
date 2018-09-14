function [out_fis] = fuzzy(x,d)

epoch_n = 20;
in_fis  = genfis2(x', d',.5);
out_fis = anfis([x' d'],in_fis,epoch_n);
y=evalfis(x',out_fis);

% plot
%plot(d*1e5)
%hold on
%plot(y*1e5,'r')
%organiza os dados para mostrar



