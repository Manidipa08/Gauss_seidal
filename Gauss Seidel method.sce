//Date : 23/09/2021
//Aim : To solve the system of non-homogeneous linear equations using Gauss Seidel Method
clc
clear
a = input("Enter the matrix A : ")
b = input("Enter the matrix B : ")
c = [a b]
disp("The Augmented Matrix : ",c)
[m n]=size(c)
disp("The size of the matrix : ",[m n])
//Assume an initial guess 
err = 1
xold = input ("Assume an initial guess : ")
iteration=1
while(err>0.000001)
    for i=1:m
        S=0
        for j=1:m
            if (i~=j)
                S=S+(a(i,j)*xold(j))
            end
        end
        
        xnew(i)=(b(i)-S)/a(i,i)
        Error(i)=abs(xnew(i)-xold(i))
        xold(i)=xnew(i)
    end  
    disp('Improved solution after each iteration',xnew)
    err=max(Error)
end

x_inbuilt=inv(a)*b;
disp("The solution using inbuilt command : ",x_inbuilt)
//t=toc()
//disp("The Required time : ",t)

