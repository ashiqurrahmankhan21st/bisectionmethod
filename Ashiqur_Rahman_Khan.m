
% Function , f(x) = 4*x^3-6*x^2+7*x-2.3
% upper value, xu = 1
% lower value, xl = 0


f = @(x) 4*x^3-6*x^2+7*x-2.3;

xu = input('input xu: ');
xl = input('input xl: ');
xold = 0;

for i=1:10
    fprintf('\nIteration: %d\n',i);
   
    xr =(xu+xl)/2; fprintf('xr = %f\n',xr);
    
    h1= f(xl); fprintf('h1 = %f\n',h1);
    h2= f(xr); fprintf('h2 = %f\n',h2);
    h = h1*h2; fprintf('h  = %f\n',h);
    
    if h<0
        xu=xr;  fprintf('xu = %f\n',xu);
    elseif h>0
        xl=xr;  fprintf('xl = %f\n',xl);
    else
        xr=xr;
        break;
    end
    
    e = abs(((xr-xold)/xr)*100); fprintf('error = %.2f',e);
    if e<10
        fprintf('\nroot %f\n',xr);
        break;
    end
    
    xold=xr;
    fprintf('xold = %f\n',xold); 
    
end

fprintf('Submitted by AshiqurRahmanKhan');
