program euler
implicit none
real::x,y,xvalue,f,dy,h
integer:: i,n
write(*,*) 'provide the value of x,y,xvalue,h'
read(*,*) x,y,xvalue,h
n = int((xvalue-x)/h +0.5)
do i=1,n
dy= y +h*f(x,y)
y=dy
x=x+h
end do
write(*,*) 'the required solution is ' , y,n
end program 
real function f(x,y)
real::x,y
f= 2*x*y
end function
