program raw
implicit none
integer::i
real:: result1
double Precision :: pi
i=785
result1=983.768
pi=4.d0*atan(1.d0)
write(*,100) i,result1
100 format (i3,2x,f8.4)
write(*,101) result1,pi,pi
write(*,100) i,result1
101 format ( e12.4,2x,g12.3,es12.5)
end program raw
