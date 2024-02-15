program quad
implicit none
real::a,b,c,x1,x2
write(*,*) 'inter the coefficient a, b, c of quad eqn ax^2+bx+c=0'
read(*,*) a,b,c
x1= (-b+sqrt(b**2-4*a*c))/(2*a)
x2= (-b-sqrt(b**2-4*a*c))/(2*a)
write(*,*) ' the roots of quad eqn are ', x1,x2
stop
end program quad
