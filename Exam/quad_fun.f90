function fq(a,b,c,x)
implicit none
real:: a,b,c,x,f,fq
f = a*x**2+b*x+c
end function fq


program fun
implicit none
real::a,b,c,x,y,fq
write(*,*) 'Enter the value coefficient of a,b,c'
read(*,*)a,b,c
write(*,*) 'Enter the the x for calculation'
read(*,*) x
y = fq(a,b,c,x)
write(*,100) 'The rquired y(x) at x =',x,' is',y
100 format (A,F6.2,A,F6.2)
end program fun
