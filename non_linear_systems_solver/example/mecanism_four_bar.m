%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Dimensions in mm

L1=40;
L2=20;
L3=20;
alfa=20;        %in degrees
xf=20;
yf=30;

%
alfa=20*pi/180; %alfa transformed to radians
%

%maximum number of iterations

maxiter=1000;

%parameter to establish the convergenvce criteria

epsilon=0.0000000001;

%number of equations in the non-linear system to solve

nsys=4;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%%%%% 2)Reading of the (nsys)equations

%Equation 1: (F1)

F1 = @(x) x(1)^2+x(3)^2-L1^2;

%Equation 2: (F2)

F2 = @(x) (x(2)-x(1))^2+(x(4)-x(3))^2-L2^2;

%Equation 3: (F3)

F3 = @(x) (xf-x(2))^2+(yf-x(4))^2-L3^2;

%Equation 4: (F4)

F4 = @(x) L1*cos(alfa)-x(1);

%%%%% Function array

F={F1,F2,F3,F4};

%%%%% Reading of the initial condition of all the (nsys) variables

x(1)=50;
x(2)=50;
x(3)=5;
x(4)=40;

%nls_aleatory_initial_values;


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

%ploting

A=[0;x(1);x(2);xf];
B=[0;x(3);x(4);yf];
plot(A,B);
hold on;        % to enable doing other iterations