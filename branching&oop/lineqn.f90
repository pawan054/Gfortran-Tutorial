program linear
implicit none
real::a1,b1,a2,b2,x,y,c1,c2,d1,d2,d
write(*,*) 'enter the value of coefficients a1,b1,a2,b2'
read(*,*) a1,a2,b1,b2
write(*,*) 'enter the value of constants'
read(*,*) c1,c2
d=(a1*b2-a2*b1)
d1=(c1*b2-c2*b1)
d2=(a1*c2-a2*c1)
x=d1/d
y=d2/d
write(*,*) 'the value of x is ', x
write(*,*) 'the value of x is ', y
stop
end program linear
