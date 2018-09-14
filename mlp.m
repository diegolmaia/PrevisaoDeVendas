function[net1] = mlp(X, D)
net.trainParam.epochs=1000;
net=newff([min(X')' max(X')'],[12 12 1],{'logsig', 'logsig','purelin'},'trainlm');
net.trainParam.goal=1e-6;
net.trainParam.mu = 0.1;
net1=train(net,X,D);

