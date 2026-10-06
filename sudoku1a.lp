% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

row(1..4).
column(1..4).

number(1..4).

1{sudoku(X,Y,Z): number(Z)} 1 :- row(X), column(Y).
:-sudoku(X,Y,Z),  sudoku(X,Y2,Z) , Y != Y2.
:- sudoku(X,Y,Z), sudoku(X2,Y,Z), X != X2.
:- initial(X,Y,Z), not sudoku(X,Y,Z).






#show sudoku/3.
