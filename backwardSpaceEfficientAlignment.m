function [C] = backwardSpaceEfficientAlignment (X,Y)
d=1;
a=2;
m=length(X);
n=length(Y);
B=zeros(m+1,2);
for i=0:m
    B(i+1,2)=d*(m-i);
end
for j=1:n
    B(m+1,1)=j*d;
    for i=1:m
        if X(m+1-i)==Y(n+1-j)
            a=0;
        end
        T=[a+B(m+2-i,2),d+B(m+1-i,2),d+B(m+2-i,1)];
        B(m+1-i,1)=min(T);
        a=2;
    end
    B(1:m+1,2)=B(1:m+1,1);
end
C=B(1:m+1,1);