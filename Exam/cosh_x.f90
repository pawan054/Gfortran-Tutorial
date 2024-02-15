program cosh_x
implicit none
real:: x,chyf, chyff
write(*,*) 'Enter the value of x: '
read(*,*) x
chyf = (exp(x)+exp(-x))/2
chyff = cosh(x)
write(*,*) 'The value of cosh hyperbolic function at x = ', x, 'is' , chyf
write(*,*) 'The value of cosh hyperbolic function (direct) at x = ', x, 'is' , chyff
write(*,*) 'we get the same results'
end program cosh_x
