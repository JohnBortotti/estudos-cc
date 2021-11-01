maiorQueCem(X):-
	(
		(X>100, write('maior que cem'))
		;
		(X=<100, write('menor que cem'))
	).
