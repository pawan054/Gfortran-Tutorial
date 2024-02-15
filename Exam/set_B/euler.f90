program euler 
implicit none 
real :: x0,y0,x,h,dy,f
integer :: i, n 
x0 = 1.0
y0 = 2.0 
x = 2.0 
!h = 0.1
write(*,*) 'Ener the value of step size, h:'
read(*,*) h
n = int((x-x0)/h) 
  do i = 1, n 
    dy = y0 + h*f(x0,y0) 
    x0 = x0 + h 
    y0 = dy
    write(*,*) 'x0=',x0,'y0=',y0,'slope=',f(x0,y0),'dy=',dy
  end do 
  
write(*,*) 'solution at x = ',x0,'is y = ',y0,'with n= ',n
end program euler 
function f(x,y)
real ::f,x,y 
f = 2*y/x
end function f 
