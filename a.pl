% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

hombre(andres).
hombre(carlos).
hombre(joaquin).

espadre(andres, carlos).
espadre(carlos, joaquin).

esabuelo(X, Y):-
    espadre(X, A);
    espadre(A, Y).