% Resolu��o de CSP com GNU Prolog
%
% Exemplo 4 ra�nhas
%   vari�veis: supondo uma ra�nha por linha,
%   as vari�veis representam as colunas das
%   ra�nhas
%        R1, R2, R3, R4
%   dom�nios:
%        Ri: {1..4}
%   restri��es:
%        Ri \= Rj
%        | i-j | \= |Ri - Rj|
%        (\= significa diferente)
%        (|....| siginifica m�dulo)
%
% Para executar, digite em uma shell de comandos:
%   gprolog --query-goal "consult('4-rainhas'), resolve, halt"
%
% by Jomi

resolve :-
  nl, % nova lina

  % cria uma lista com todas as vari�veis
  Todas = [R1, R2, R3, R4],

  % cria as vari�veis e os dom�nios (valores de 1 a 4)
  fd_domain(Todas, 1, 4),

  % restri��es
  fd_all_different(Todas), % todas devem ter valores diferentes

  % diagonais (dist retorna a diferen�a entre as vari�veis)
  1 #\= dist(R1, R2),
  2 #\= dist(R1, R3),
  3 #\= dist(R1, R4),
  1 #\= dist(R2, R3),
  2 #\= dist(R2, R4),
  1 #\= dist(R3, R4),

  % resolve o CSP
  fd_labeling( Todas ),

  % imprime resultado
  write('R1 = '), write(R1), nl,
  write('R2 = '), write(R2), nl,
  write('R3 = '), write(R3), nl,
  write('R4 = '), write(R4), nl.
