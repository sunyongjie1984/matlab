clc;
% worked examples 1.1 A
v = [ 1; 0 ];
w = [ 0; 1 ];
v1 = [ 2; 3; 1 ];
v2 = [ 5; 7; 2 ];
v3 = [ pi; 2 * pi; pi ];

quiver3( 0, 0, 0, v( 1 ), v( 2 ), v( 3 ), 1);
test_kk = sprintf('%s', ' v = [ 1; 1; 0 ] ');
text( v( 1 ) / 2, v( 2 ) / 2, v( 3 ) / 2, test_kk );
hold on;

quiver3( 0, 0, 0, w( 1 ), w( 2 ), w( 3 ), 1);
test_kk = sprintf('%s', ' w = [ 0; 1; 1 ] ');
text( w( 1 ) / 2, w( 2 ) / 2, w( 3 ) / 2, test_kk );
hold on;

quiver3( 0, 0, 0, v1( 1 ), v1( 2 ), v1( 3 ), 1);
test_kk = sprintf('%s', ' v1 = [ 2; 3; 1 ] ');
text( v1( 1 ) / 2, v1( 2 ) / 2, v1( 3 ) / 2, test_kk );
hold on;

quiver3( 0, 0, 0, v2( 1 ), v2( 2 ), v2( 3 ), 1);
test_kk = sprintf('%s', ' v2 = [ 5; 7; 2 ] ');
text( v2( 1 ) / 2, v2( 2 ) / 2, v2( 3 ) / 2, test_kk );
hold on;

quiver3( 0, 0, 0, v3( 1 ), v3( 2 ), v3( 3 ), 1);
test_kk = sprintf('%s', ' v3 = [ pi; 2 * pi; pi ] ');
text( v3( 1 ) / 2, v3( 2 ) / 2, v3( 3 ) / 2, test_kk );
hold on;

% plot( w );
% hold on;
% plot( v1 );
% hold on;
% plot( v2 );
% hold on;
% plot( v3 );
% hold on;

% m = [ 1 ; 1 ]
% n = [ 2 ; 3 ]
% kk = 3 * v + 5 * w
% quiver( 0, 0, kk( 1 ), kk( 2), 1 );
% 
% kk_x = sprintf('%f', kk( 1 ) );
% kk_y = sprintf('%f', kk( 2 ) );
% test_kk = sprintf('%s%s%s%s%s', '3m + 5n', '  ( ', kk_x, ', ', kk_y, ' )');
% text( kk( 1 ) / 2, kk( 2 ) / 2, test_kk ); 
% hold on
% 
% w = [ -1 ; 2 ]
% v = [ 4 ; 2 ]
% v + w
% 
% 
% quiver( 0, 0, -1, 2, 1)
% text( -0.5, 1, '  w = ( -1, 2 ) ' );
% 
% hold on
% quiver( 0, 0, 4, 2, 1 )
% text( 2, 1, '  v = ( 4, 2 ) ');
% hold on
% quiver( 0, 0, 3, 4, 1 )
% text( 1.5, 2, '  ( v + w ) = ( 3, 4 )');
% % text( 1.5, 2, '\fontsize{18} ( v + w ) = ( 3, 4 )');
% hold on
% quiver( 0, 0, 5, 0, 1 )
% text( 2.5, 0.1, '  ( v + ( -w ) ) = ( 5, 0 )');
% 
% hold on
% quiver( 4, 2, -1, 2, 1, '--' )
% text( 3.5, 3, '  w ');
% 
% hold on
% quiver( -1, 2, 4, 2, 1, '--' )
% text( 1, 3, '  v ');
% hold on
% quiver( 0, 0, 1, -2, 1, '--' )
% text( 0.5, -1, '  -w ');
% hold on 
% quiver( 4, 2, 1, -2, 1, '--' )
% text( 4.5, 1, '  -w ');
% hold on
% quiver( 1, -2, 4, 2, 1, '--' )
% text( 3, -1, '  v ');

%title({'Figure 1.1: Vector addition v + w = ( 3, 4 ) produces the diagonal of a parallelogram.';...
%    'The reverse of w is -w. The linear combination on the right is v - w = ( 5, 0 ).'},'FontSize',12);
xlabel('x'); ylabel('y');
legend('kk', ' w ', ' v ', ' v + w ', ' v + ( -w ) ', ' w ', ' v ', ' -w ', ' -w ', ' v ' )  
%legend(' w ', ' v ', ' v + w ', ' v + ( -w ) ', ' w ', ' v ', ' -w ', ' -w ', ' v ' )  
  

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