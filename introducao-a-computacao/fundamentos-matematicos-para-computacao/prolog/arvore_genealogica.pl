% fatos

progenitor(jose, joao).
progenitor(maria, joao).
progenitor(jose, ana).
progenitor(maria, ana).
progenitor(ana, helena).
progenitor(ana, joana).
progenitor(joao, mario).
progenitor(helena, carlos).
progenitor(mario, carlos).

sexo(jose, masculino).
sexo(maria, feminino).
sexo(ana, feminino).
sexo(helena, feminino).
sexo(joana, feminino).
sexo(joao, masculino).
sexo(mario, masculino).
sexo(carlos, masculino).

irma(X, Y):-
	progenitor(A, X),    % X deve ser filha de A
	progenitor(A, Y),    % Y tambem deve ser filha de A
	X\==Y,               % nao podem ser a msm pessoa
	sexo(X, feminino).   % deve ser do sexo feminino

irmao(X, Y):-					 
	progenitor(A, X),		 % X deve ser filho de A
	progenitor(A, Y),		 % Y tambem deve ser filho de A
	X\==Y,							 % nao podem ser a msm pessoa
	sexo(X, masculino).	 % deve ser do sexo masculino

descendente(X, Y):-
	progenitor(Y, X).

descendente(X, Y):-
	progenitor(X, A),
	descendente(A, Y).

mae(X, Y):-
	progenitor(X, Y),
	sexo(X, feminino).

pai(X, Y):-
	progenitor(X, Y),
	sexo(X, masculino).

avo(X, Y):-
	progenitor(X, A),
	progenitor(A, Y).

tio(X, Y):-
	irmao(X, A),
	progenitor(A, Y).

primo(X, Y):-
	irmao(A, B),
	progenitor(A, X),
	progenitor(B, Y),
	X\==Y.

primo(X, Y):-
	irma(A, B),
	progenitor(A, X),
	progenitor(B, Y),
	X\==Y.

% questoes

q1:- progenitor(jose, joao).
q1b:- pai(jose, joao).

q2(X):- mae(maria, X).

q3(X):-primo(mario, X).
