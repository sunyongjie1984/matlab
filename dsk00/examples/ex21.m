%《MATLAB及其在理工课程中的应用指南》第二章第一节演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月初版，2004年11月第二版
%
format,echo on
pause,x1=sqrt(5),x2=1.37,y=3/x2
pause,a=[1,2,3;4,5,6;7,8,9]
pause,x=[-1.3 sqrt(3) (1+2+3)/5*4]
pause,x(5)=abs(x(1))
pause,a(4,3)=6.5
pause,a(5,:)=[5,4,3]
pause,b=a([2,4],[1,3])
pause,a([2,4,5],:)=[]
pause,disp(' 无左端变量时')
pause,a/7
pause,c=3+5.2i
pause,z=[1+2i,3+4i;5+6i,7+8i]
pause,z=[1,3;5,7]+[2,4;6,8]*i
pause,f=sqrt(1+2i)
pause,g=sin(3+5i)
pause,f*f,f*z
pause,format compact
pause,z,w=z',u=conj(z),v=conj(z)'
pause,who
pause,whos
keyboard
pause,f1=ones(3,2),f2=zeros(2,3),f3=magic(3),f4=eye(2)
pause,f5=linspace(0,1,5)
pause,fb1=[f1,f3;f4,f2]
pause,fb2=[fb1;f5]
echo off
