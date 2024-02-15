program root
implicit none
real:: a,b,c,d,d1,d2
write(*,*) 'enter the value of a,b,c'
read(*,*) a,b,c
d= b**2.-4.*a*c
if (a==0) then 
write(*,*) 'the given eqn is not quadratic equation because a=0'
else if (c==0) then 
write(*,*) 'the one root is zero and another root is given by d2'
d2=(-b/a)
write(*,*) 'the root d2 is given by ' , d2
else if (d>0) then
write(*,*) 'the roots are distinct and real'
d1=(-b+sqrt(b**2.-4.*a*c))/(2*a)
d2=(-b-sqrt(b**2.-4.*a*c))/(2*a)
write(*,*) 'the roots are ', d1,d2
else if (d==0) then
write(*,*) 'the roots are equal'
d1=-b/(2.*a)
d2=-b/(2.*a)
write(*,*) 'the roots are ', d1,d2
else
write(*,*) 'the roots are distinct and complex'
d1=(-b/(2.*a))
d2=(sqrt(-d))/(2*a)
write(*,*) 'the real part of root is' , d1
write(*,*) 'the imaginary part of root is' , d2
end if
end program root	
