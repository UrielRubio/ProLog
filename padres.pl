espadre(carlos, arturo).
espadre(luis, juana).
espadre(arturo, juan).
espadre(arturo, maria).
espadre(arturo, pedro).
esmadre(gema, arturo).
esmadre(susan, juana).
esmadre(juana, juan).
esmadre(juana, maria).
esmadre(juana, pedro).

%Hermanos
eshermano(X, Y):- espadre(A, X), espadre(A, Y), (X\=Y).
%Abuelos
esabuelo(X, Y):- (espadre(X, A), espadre(A, Y));
                  (esmadre(X, A), esmadre(A, Y));
                  (esmadre(X, A), espadre(A, Y));
                  (espadre(X, A), esmadre(A, Y)).
%Hijo()
eshijo(X, Y):- espadre(Y, X); esmadre(Y, X).
