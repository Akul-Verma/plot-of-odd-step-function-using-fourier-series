//name:-Akul Verma
//roll.no:-44
//for odd step function
clc;
clf;
ea=1e-8;
err=1e-14;
a=0;
b=1;
d=-1;
n=1000;
x=linspace(-1,1,n)
for i=1:n
   B(i)=integrate('sin(i*%pi*x)','x',0,1)
end

for i=1:n
    C(i)=integrate('-1*sin(i*%pi*x)','x',-1,0)
end
for j=1:n
    A(j)=0
for i=1:n
    A(j)=A(j)+B(i)*sin(i*%pi*x(j))
end
p(j)=0
for i=1:n
    p(j)=p(j)+C(i)*sin(i*%pi*x(j))
end
v(j)=p(j)+A(j)
end
plot(x',v)
a=gca()
a.x_location="origin"
a.y_location="origin"
xlabel("x-axis","fontsize",4);
ylabel("y-axis","fontsize",4);
title("Plot of odd stepfunction n=1000","fontsize",5);
