clear all
close all
clc

n = 8;

%Carrega arquivo de dados
X = load('-ascii', "dados.ascii"); 

%Carrega arquivo de classes 
c = load("rotulos.txt"); 

%Define nome do arquivo de saida
arq_saida = "dados_saida_LDA.ascii";

%Mostra os indices de cada classe (alterar p/ o numero de classes dos dados)
c1 = X(find(c==2),:);
c2 = X(find(c==1),:);
c3 = X(find(c==2),:);

classes = max(c)
mu_total = mean(X);

mu = [ mean(c1); mean(c2); mean(c3) ];
Sw = (X - mu(c,:))'*(X - mu(c,:));
Sb = (ones(classes,1) * mu_total - mu)' * (ones(classes,1) * mu_total - mu);

[V, D] = eig(Sw\Sb);

%Leva os pontos originais para um novo sistema de coordenada centrada na media calculada
Xm = bsxfun(@minus, X, mu_total);

%Com "n" sendo o novo numero de coordenadas
Z = Xm*V(:,1:n);

%Ordena autovalores em ordem decrescente
C = cov(Xm);
[V,D] = eig(C);
[D, i] = sort(diag(D), 'descend');
V = V(:,i);
soma_acu = cumsum(D)/sum(D)

%salva os arquivos de saida
save('-ascii', "autovalores.ascii","soma_acu");
save('-ascii', arq_saida,"Z");
