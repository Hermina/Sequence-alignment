function testiranje
t1=zeros(1,10);
t2=zeros(1,10);
for i=1:10
    for j=1:5
        X=RandomString(i*100);
        Y=RandomString(i*110);
        tic;
        divideAndConquerAlignment(X,Y,1,1);
        t1(i)=t1(i)+toc;
        tic;
        alignment(X,Y);
        t2(i)=t2(i)+toc;
    end
end
t1=t1/5;
t2=t2/5;
figure(1)
plot(t1,t2);
xlabel('Divide and counquer');
ylabel('Regular alignment');
figure(2)
plot(t1,'r');
hold on
plot(t2,'b');
legend('Divide and counquer','Regular alignment');
xlabel('String size');
ylabel('Time');
end