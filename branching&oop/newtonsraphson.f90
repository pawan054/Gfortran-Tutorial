program newton
implicit none
integer::i,n
real:: xo,x,f,fbar,epsi, delta
n=1000
write(*,*) 'enter the value of intial guess for x'
read(*,*) xo
write(*,*) 'provide the value of delta and epsilon'
read(*,*) delta,epsi
do i= 1,n
if (abs(fbar(xo))<delta) then 
write(*,*) 'the slope is too short and roots are not found'
else
x=xo-(f(xo)/fbar(xo))
if (abs(x-xo)<epsi) then 
write(*,*) 'current root=', x
else 
xo=x
end if 
end if 
end do 
write(*,*) 'final root=',x
end program newton
real function f(y)
real::y
f=cos(y)-y
end function
real function fbar(z)
real:: z
fbar = -sin(z)-1.
end function

