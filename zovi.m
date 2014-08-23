function [S]=zovi (X,Y)
global P;
P=[];
divideAndConquerAlignment(X,Y,1,1);
length(P);
%S=P;
S=sort(P,'descend');
end