program quad
implicit none
real:: a,b,c,d,d1,d2,re,im,x
Write(*,*) 'enter the value of a,b,c'
read(*,*) a,b,c	
if (a==0) then 
write(*,*) 'the equation is linear'
x=-c/b
write(*,*) 'the solution of linear equation is given by',x
else
 if (b==0) then 
!write(*,*) 'the equation is has real and imaginary roots'
if (c*a<0) then 
write(*,*) 'the roots are imaginary'
re=0
im=sqrt(-c/a)
write(*,*) 'the real part of roots and imaginary part of roots are',re,im
else
write(*,*) 'the roots are real and equal'
re=sqrt(c/a)
write(*,*) 'the one of equal root is' ,re
end if 

else
if(c==0) then 
write(*,*) 'the one root is zero and next is x'
x=(-b/a)
write(*,*) 'And the x is given by',x
else
d= b**2.-4.*a*c
if (d>0) then 
write(*,*) 'The roots are real and distinct'
d1=(-b+sqrt(d))/(2.*a)
d2=(-b-sqrt(d))/(2.*a)
write(*,*) ' And the roots are given by' ,d1,d2
else if (d==0) then
write(*,*) 'The roots are real and equal '
re=-b/(2.*a)
write(*,*) 'And the equal root is ',re 
else 
write(*,*) 'The roots are complex '
re= -b/(2*a)
im=(sqrt(-d))/(2*a)
write(*,*) 'The real and imaginary part of roots are' ,re,im
end if
end if 
end if
end if
end program
