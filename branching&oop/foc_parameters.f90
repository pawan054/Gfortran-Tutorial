program foc
implicit none 
real::a,b,c,n,m,x
write(*,*)'Enter the value of a,b,c'
read(*,*)a,b,c
m = (a**2*b**2+a**2*c**2-b**2*c**2)/4*a**2*b**2
n = (a**2*b**2+a**2*c**2+b**2*c**2)/4*a**2*b**2
write(*,*) 'symmetry co-ordinates of X are :','0.0',n,n
end program foc
