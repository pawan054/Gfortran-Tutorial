program Range_k
implicit none
real::x,y,xvalue,f,dy,h,m0,m1,m2,m3
integer:: i,n
write(*,*) 'provide the value of x,y,xvalue,h'
read(*,*) x,y,xvalue,h
n = int((xvalue-x)/h +0.5)
do i=1,n
m0= f(x,y)
m1=f(x+h/2,y+(h/2)*m0)
m2=f(x+h/2,y+(h/2)*m1)
m3=f(x+h/2,y+(h/2)*m2)
y=y+dy
x=x+h
end do
write(*,*) 'the required solution is ' , y,n
end program Range_k
real function f(x,y)
real::x,y
f= 2*x*y
end function
