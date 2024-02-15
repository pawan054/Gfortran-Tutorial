program quad
implicit none
real:: a,b,c,d,d1,d2
write (*,*) 'write the value of a,b,c'
read(*,*) a,b,c
d=b**2-4*a*c
if (d>0) then
write(*,*) 'Roots are distinct and real'
d1 = (-b+sqrt(b**2-4*a*c))/(2*a)
d2 = (-b-sqrt(b**2-4*a*c))/(2*a)
write(*,*) 'the roots are ',d1,d2
else if (d==0) then
write(*,*) 'Roots are equal and real'
d1 = -b/(2*a)
d2= -b/(2*a)
write(*,*) 'the roots are ', d1,d2
else
write(*,*) 'Roots are distinct and complex'
d1= (-b/(2*a))
d2= (sqrt(-d)/(2*a))
write(*,*) 'the real part of root is ',d1
write(*,*) 'the imaginary part of root is ',d2
end if
end program 

