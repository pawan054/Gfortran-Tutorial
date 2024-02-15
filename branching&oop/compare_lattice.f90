program lattice 
implicit none
real::a,b,d
logical::comp
a = 10.84
b= 13.30
d = 6.39
 comp = (1/a**2) >= ((1/b**2) + (1/d**2))
 write(*,*) comp
 end program lattice 

