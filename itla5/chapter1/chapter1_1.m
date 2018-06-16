v = [ 1 ; 1 ]
w = [ 2 ; 3 ]
3 * v + 5 * w

w = [ -1 ; 2 ]
v = [ 4 ; 2 ]
v + w


quiver( 0, 0, -1, 2, 1)
text( -0.5, 1, '\fontsize{18} w = ( -1, 2 ) ' );

hold
quiver( 0, 0, 4, 2, 1 )
text( 2, 1, '\fontsize{18} v = ( 4, 2 ) ');

quiver( 0, 0, 3, 4, 1 )
text( 1.5, 2, '\fontsize{18} ( v + w ) = ( 3, 4 )');

quiver( 0, 0, 5, 0, 1 )
text( 2.5, 0.1, '\fontsize{18} ( v + ( -w ) ) = ( 5, 0 )');


quiver( -1, 2, 4, 2, 1, '--' )
text( 1, 3, '\fontsize{18} v ');

title('The title you want to add to the graph.');
xlabel('x'); ylabel('y');
legend(' w ', ' v ', ' v + w ', ' v + ( -w ) ' )  
     

% t=[0,2,4,6,8];
% y1=[0,0.075,0.135,0.1875,0.255];
% y2=[0,0.0625,0.125,0.25,0.5];
% y3=[0,0.0125,0.025,0.05,0.1];
% y4=[0.01,0.01,0.01,0.01,0.01];
% subplot(2,2,1),plot(t,y1),title('line1');
% subplot(2,2,2),plot(t,y2),title('line2');
% subplot(2,2,3),plot(t,y3),title('line3');
% subplot(2,2,4),plot(t,y4),title('line4');

% 
% x=[0 0 0 0];
% y=x;
% u=[1 -1 0 0];
% v=[0 0 1 -1];
% quiver(x,y,u,v)