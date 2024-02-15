program projectile
implicit none
integer:: theta,max_theta = 0
real::u,r,max_r=0, g,pi,angle
write(*,*) 'Enter the value of initial velocity: '
read(*,*) u
write(*,*) 'Enter the value of g: '
read(*,*) g
pi = 4*atan(1.)
do theta = 0,90
angle= real(theta)*(pi/180)
r = (-2*u**2/g)*sin(angle)*cos(angle)
write(*,*) 'The horizontal range,R at ', theta, 'degree is ',r
if (r>max_r) then 
max_r = r 
max_theta = theta
end if 
end do 
write(*,*) ''
write(*,*) 'Max range = ', max_r, 'at', max_theta, 'degree'
end program projectile

