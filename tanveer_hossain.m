clear all;clc;
N=input('k='); %taking the value for N
k=N;
N=N*N; %total matrix size

A=zeros(N,N); %initialization of A matrix
b=zeros(N,1);  %initialization of b matrix
x=zeros(N,1);  %initialization of x matrix

h=1/k; %differential distence


for i=1:N
    for j=1:N
       
        if(i==j)
            A(i,j)=(4/h^2); %corner elemnts
        end
        
        if(abs(i-j)==1 && (floor(i/k)==floor(j/k)))
          A(i,j)= (-1/h^2); 
        end
        
        if(abs(i-j)==k)
            A(i,j)=-1/h^2;
        end
        
    end
end


for i=1:N
    b(i)=1;
end

 
x=inv(A)*b;
y=hossain_cg(A,b,x);
ern=norm(x-y,2)
plot(x);xlabel('grid points');ylabel('solution');