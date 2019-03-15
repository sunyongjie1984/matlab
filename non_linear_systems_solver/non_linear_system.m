%%   Solver of non linear systems:
%
%   this routine solves a nonlinear system with the Newton-Raphson
%   iterative method
%
%   The following steps are followed:
%
%   1)Reading of the parameters of the solution:
%    
%   -max number of iterations: max_iter
%   -maximum variation to define convergence criteria: epsilon
%   -number of equations in the non-linear system: Nsys
%
%   2)Reading of the equations
%
%   -Reading of the equations of the non-linear system
%   -Reading of the initial condition vector
%   -Verification of the input data in order to detect incorrect inputs
%
%   3)Iterative calculation (repeated until convergence):
%       3.1)Assemblage of the matrix of derivate functions
%       3.2)Calculate the new value of the variables (given by this
%       iteration)
%       3.3)Compare the difference between the new and old values with the
%       converging criteria (epsilon)
%
%   4)Presentation and store of the result values
%
%
%%
%%%%% 1 Reading of the parameters of the solution:

%maximum number of iterations

maxiter=1000;

%parameter to establish the convergenvce criteria

epsilon=0.0000000001;

%number of equations in the non-linear system to solve

nsys=2;

%%
%%%%% 2)Reading of the (nsys)equations


%Standard form of definition of the equations:
%
%F1 = @(x1,x2,x3) x1+x2-x3+b*a;
%
%   *The equations are defined as an anonymous function;
%   *They must be numbered sequentially: F1,F2,F3,... ,Fnsys;
%   *The function array must be filled with all the F(nsys) functions of
%   the system: F={F1,F2,F3,... F(nsys)}
%   *Variables must be numbered like: x1,x2,x3,... ,xnsys;
%   *Number of equations must be equal to the number of variables and
%   equal to (nsys)
%
%Equation 1: (F1)

F1 = @(x) x(1)^2+x(2)^2-40;

%Equation 2: (F2)

a=5;

F2 = @(x) x(1)-a;

%%%%% Function array

F={F1,F2};

%%%%% Reading of the initial condition of all the (nsys) variables

nls_aleatory_initial_values;

%The values could instead be inputed one by one like done bellow:
%x(1)=1
%x(2)=4
%x(3)=6


%%%%% Verification of the input data:

%(to be created)

        %Function array has an order equivalent to nsys
        
%(to be created)
    

%%
%%%%% 3)Iterative calculations

nloop=0;
nconverg=0;

while nloop<maxiter

    %%%%% Assemblage of the matrix of derivative functions

    dFidxj=zeros(nsys,nsys);

    for i=1:1:nsys
        for j=1:1:nsys
            nls_derivada;
        end
    end
    
%%
    %%%%% Calculation of the vector with the values of each function
           
    for i=1:1:nsys
       j=F{i};
       D(i,1)=j(x);
    end
    
%%
    %%%%% Calculation of the error
    
    A=inv(dFidxj);
    error=A*D;
    dx=error';
    
%%    
    %%%%% Adding the error to the x to obtain the new iteration
    
    x=x-dx;
    
%%   
    %%%%% Parameter to determine the end of the while loop
    
        %%%% While loop counter
        
        nloop=nloop+1;
        nconverg=nconverg+1;
%%        
        %%%% Converging criteria (error < epsilon)
        
        maxdx=max(abs(error));
        
        if maxdx<epsilon
            nloop=maxiter;
        end

        
end
%%
%%%%% 4)Presentation and store of the result values

x
nconverg

%%% The values of the variables x(1), x(2),... x(nsys) can now be atributed
%%% to their respective destines

