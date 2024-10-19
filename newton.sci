clear
//definição da função f(x)
deff('y=f(x)','y=log(x+1*10^(-6))-x*10^(-5)-0.6')
//derivada de f(x)
deff('ylinha=g(x)','ylinha=1/(x+1*10^(-6)) -10^(-5)')

tol=10^(-3)
x1=200
iteracoes=0

//iteração newton-raphson
x2=x1-f(x1)/g(x1)
erro=abs(x2-x1)
//iteracoes = iteracoes + 1

while erro > tol
    x1=x2
    x2=x1-f(x1)/g(x1)
    erro=abs(x2-x1)
    iteracoes = iteracoes + 1
    
    //Mostrar cada iteraçao
    disp("Iteração: "+string(iteracoes)+",x: " +string(x2) +",erro: "+string(erro))
    
end

disp("Solução encontrada: "+string(x2))
disp("Número de iterações: " + string(iteracoes))
