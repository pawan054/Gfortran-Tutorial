program Range_k
implicit none
real::x,y,z,xvalue,f,g,dy,h,m0,m1,m2,m3,m4,p1,p2,p3,p4,m,p
integer:: i,n
write(*,*) 'provide the value of x,y,z,xvalue,h'
read(*,*) x,y,z,xvalue,h
n = int((xvalue-x)/h +0.5)
do i=1,n
m1=f(x,y,z)
p1=g(x,y,z)
m2=f(x+h/2,y+(h/2)*m1,z+(h/2)*p1)
p2=f(x+h/2,y+(h/2)*m1,z+(h/2)*p1)
m3=f(x+h/2,y+(h/2)*m2,z+(h/2)*p2)
p3=f(x+h/2,y+(h/2)*m2,z+(h/2)*p2)
m4=f(x+h/2,y+(h/2)*m3,z+(h/2)*p3)
p4=f(x+h/2,y+(h/2)*m3,z+(h/2)*p4)
m= (m1+2*m2+2*m3+m4)/6
p= (p1+2*p2+2*p3+p4)/6
y=y+h*m
z=z+h*p
x=x+h
end do
write(*,*) 'the required results are ', x,y,z
end program
real function f(x,y,z)
real::z
f= z
end function
real function g(x,y,z)
real::y,z
g= 9-3*y-2*z
end function
