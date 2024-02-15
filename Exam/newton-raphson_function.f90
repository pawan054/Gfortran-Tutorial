function f(x)
real::x,f
f= tan(5.*x) -x
end function f

function fbar(x)
real::x,fbar,f
f= (5./(cos(5.*x))**2)-1
end function fbar

program Newton_Raphson
implicit none
real::x0,x1,delta,f,fbar
real::tol,error
write(*,*) ' Enter the value of tolerance : '
read(*,*) tol
write(*,*) ' Enter the value of initial guess of x0 : '
read(*,*)x0
error = 1.
do while (error .gt. tol) 
 delta = - f(x0)/fbar(x0)
x1 = x0+delta
error = abs (delta/x0)
x0 = x1
write(*,*) error,f(x0),f(x1)
end do 
write(*,*) 'Root found at ',x1
end program newton_Raphson
