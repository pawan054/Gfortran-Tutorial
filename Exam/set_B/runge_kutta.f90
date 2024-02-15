program runge_kutta
implicit none
real::x0,y0,x,h,k1,k2,k3,k4,k,dy,f
integer:: i,n
x0 = 1.0
y0 = 2.0
x = 2.0
write(*,*) 'enter the no of steps '
read(*,*) n
h = (x-x0)/n 
    write(*,101) 
    101 format (1x,'x0',t5,'y0',t9,'dy')
    write(*,102)
    102 format (1x,'==',t5,'===',t9,'==')
  do i =1, n 
    k1 = f(x0,y0)
    k2 = f(x0+h/2., y0+k1*h/2.)
    k3 = f(x0+h/2., y0+k2*h/2)
    k4 = f(x0+h, y0+k3*h)
    k = (h/6.)*(k1+2*k2+2*k3+k4)
    dy = y0 + k
    write(*,100) x0,y0,dy
    100 format (F6.3,t4,F6.3,t8,F6.3)
    x0 = x0+h
    y0 = dy 
   end do 
 write(*,*) 'Solution at x = ',x0,'is y = ',y0,'with n=',n
 end program runge_kutta
 function f (x,y)
 real::x,y,f
 f = 2*y/x
 end function f
    
