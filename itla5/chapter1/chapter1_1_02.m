v = [ 1; 1; -1; ]
w = [ 2; 3; 4; ]
v + w 


quiver3( 0, 0, 0, 1, 1, -1, 1 )
text( 1, 1, -1, '  v = ( 1, 1, -1 ) ' );

hold

quiver3( 0, 0, 0, 2, 3, 4, 1 )
text( 2, 3, 4, '  w = ( 2, 3, 4 ) ' );

quiver3( 0, 0, 0, 3, 4, 3, 1 )
text( 3, 4, 3, '  w = ( 3, 4, 3 ) ' );


title('vectors in three dimensions','FontSize',12);
xlabel('x');
ylabel('y');
zlabel('z');
legend(' v ', ' w ', ' v + w ' )  