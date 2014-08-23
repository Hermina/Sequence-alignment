function divideAndConquerAlignment (X,Y,pocX,pocY)
global P;
[k,~]=size(P);
m=length(X);
n=length(Y);
if m<=2 || n<=2
    L=alignment(X,Y);
    [l,~]=size(L);
    L(1:l,1)=L(1:l,1)+pocX-1;
    L(1:l,2)=L(1:l,2)+pocY-1;
    P(k+1:k+l,1:2)=L;
else
    A=spaceEfficientAlignment(X,Y(1:ceil(n/2)));
    B=backwardSpaceEfficientAlignment(X,Y(ceil(n/2)+1:n));
    [cost,q]=min(A+B);
    P(k+1,1)=q+pocX-2;
    P(k+1,2)=ceil(n/2)+pocY-1;
    if q>1
    divideAndConquerAlignment(X(1:q-1),Y(1:ceil(n/2)),pocX,pocY);
    divideAndConquerAlignment(X(q:m),Y(ceil(n/2)+1:n),q+pocX-1,ceil(n/2)+pocY);
    else
    divideAndConquerAlignment([],Y(1:ceil(n/2)),pocX,pocY);
    divideAndConquerAlignment(X(q:m),Y(ceil(n/2)+1:n),pocX,ceil(n/2)+pocY);
    end
end
    