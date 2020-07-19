# lda

Aplicação da técnica "Linear Discrimant Analysis" em um arquivo de vetores de dados.

Para maiores detalhes, por favor acessem:
https://bytefish.de/blog/pca_lda_with_gnu_octave/

Programa criado e executado no GNU Octave, version 4.0.0.

Amostras de Exemplos:

Arquivo de vetores originais: dados.ascii (23 componentes)

Arquivo de rótulos: rotulos.txt
OBS: As classes devem ser rotuladas de forma númerica, trocando a classe "0", se as
classes dos seus dados contém "0" como rótulo, alterar para algum outro valor (Ex. 2)

Exemplo: Seu arquivo de rótulos contém 6 registros de rotulos entre 0 e 1.

0
0
0
1
0
1

Alterar para:

2
2
2
1
2
1

Arquivo de vetores de saída (pós LDA): dados_saida_LDA.ascii (8 componentes) - no exemplo

Arquivo com a soma acumulada dos autovalores (importância relativa de cada componente
adicionada): Autovalores.ascii

No exemplo, com 8 componentes, temos 0.96577 (96,6%) dos dados originais nestas 8 componentes.
