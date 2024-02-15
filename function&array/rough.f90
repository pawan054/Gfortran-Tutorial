program rg
implicit none
real:: a,b,c,d,e,pi,f,g,h
pi = 4.*atan(1.)
write(*,*) 'enter the value of a in degre'
read(*,*) a
b= (pi/180)*a
c= sin(b)
d= cos(b)
e= c**2+d**2
f= (180./pi)*asin(c)
g= (180./pi)*acos(d)
write(*,*) c,d,e
write(*,*) f,g
end program
