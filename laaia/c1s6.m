% data for Exercise Set 1.6
       
ex = input('Exercise number (1, 2-14)? ');
       
if ex==1
   A = [.8 -.7 0;-.8 .7 0]   
elseif ex==3
   A = [.8 -.8 -.4 0;-.3 .9 -.4 0;-.5 -.1 .8 0]   
elseif ex==4
   A = [.35 -.2 -.2 0;-.05 .9 -.3 0;-.3 -.7 .5 0]
elseif ex==5
   A = [2 0 -1 0 0;3 0 0 -1 0;0 2 -3 -2 0;0 1 -3 0 0]
elseif ex==6
   A = [3 0 0 -1 0;1 0 -2 0 0;4 6 -8 -3 0;0 1 -3 0 0;0 2 0 -1 0]   
elseif ex==7
   A = [1 0 -3 0 0 0;1 8 -5 -2 0 0;1 6 -6 0 -1 0;3 7 -7 -1 -2 0]   
elseif ex==8
   A = [1 0 0 0 -2 0 0;1 1 0 -1 0 0 0;4 4 1 -2 -4 -4 0;0 1 0 0 -1 -1 0;0 0 2 0 0 -2 0]   
elseif ex==9
   A = [1 0 3 0 0 0 0;6 0 0 0 0 1 0;0 1 0 2 0 0 0;0 2 0 0 1 0 0;0 8 4 3 2 1 0]   
elseif ex==10
   A = [1 0 0 1 0 0 0 0;1 0 1 0 0 3 0 0;0 2 0 0 1 0 0 0;0 10 0 0 0 1 0 0;0 35 4 4 0 12 1 0;0 0 2 1 3 0 2 0] 
elseif ex==11
   A = [1 0 1 0 20;0 1 -1 -1 0;1 1 0 0 80;0 0 0 1 60] 
elseif ex==12
   A = [1 0 -1 -1 0 40;1 1 0 0 0 200;0 1 1 0 -1 100;0 0 0 1 1 60] 
elseif ex==13
   A = [1 -1 0 0 0 0 -50;0 1 -1 1 -1 0 0;0 0 0 0 1 -1 60;0 0 0 1 0 -1 50;1 0 -1 0 0 0 -40]
elseif ex==14
   A = [1 -1 0 0 0 0 100;0 1 -1 0 0 0 -50;0 0 1 -1 0 0 120;0 0 0 1 -1 0 -150;0 0 0 0 1 -1 80;-1 0 0 0 0 1 -100]
else
   disp('No data for this exercise in Section 1.6.') 
end
