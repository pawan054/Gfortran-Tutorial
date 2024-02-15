function f1(x)
real:: f1,x,f
f = cos(x)-x
end function f1

function f2(x)
real:: f2,x,fbar
fbar = -sin(x) -1 
end function f2

program cos_x
implicit none
real:: x,x1,f1,f2,tol,error
write(*,*) 'Enter the value of tolerance : '
read(*,*) tol
write(*,*) 'Enter the inittial guess i.e x : '
read(*,*) x
100 x1 = x -f1(x)/f2(x)
x=x1
error = abs(-f1(x)/f2(x)*x)
write(*,*) error
if (error .ge. tol ) go to 100
write(*,*) 'root = ', x
end program cos_x
