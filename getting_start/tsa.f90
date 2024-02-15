program tsa
real::a,h,p,t
write(*,*)'enter the value of side equilateral triangle'
read(*,*) a
write(*,*)'enter the value of height of prism'
read(*,*) h
p= 3*a
t= p*h+((sqrt(3.))/4)*a**2
write(*,*)'the total surface area of prism is', t
stop
end program tsa
