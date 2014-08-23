function [C] = spaceEfficientAlignment (X,Y)
d=1;
a=2;
m=length(X);
n=length(Y);
B=zeros(m+1,2);
for i=0:m
    B(i+1,1)=d*i;
end
for j=1:n
    B(1,2)=j*d;
    for i=1:m
        if X(i)==Y(j)
            a=0;
        end
        T=[a+B(i,1),d+B(i,2),d+B(i+1,1)];
        B(i+1,2)=min(T);
        a=2;
    end
    B(1:m+1,1)=B(1:m+1,2);
end
C=B(1:m+1,1);
end