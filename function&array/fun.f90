program fun
implicit none
integer::i
real::x,f,fx1,fx2,x1,x2
write(*,*) 'enter the value of x'
read(*,*) x1,x2
do i =1,10
fx1= f(x1)
fx2= f(x2)
end do 
do i=1,10
write(*,*) 'The value of function at x1 =',fx1, ' and at x2 =' , fx2
end do 
end program fun
real function f(y)
real::y
f = y**2+4
end function 
