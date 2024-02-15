program maxm
implicit none
real, parameter::dtor=0.01745329
real, parameter::g= -9.81 
integer::theta
real::max_range,ranges,max_degree,radain,vo
max_range =0
max_degree=0
vo=20
do theta =0,90
radain = real(theta)*dtor
ranges = (-2*vo**2/g)*sin(radain)*cos(radain)
write(*,*) 'The required angle theta = ' , theta, 'degree: and range = ', ranges , 'in meter'
write(*,*) 'the maximum range for this angle = ', max_range
if (ranges > max_range) then 
max_range = ranges
max_degree = theta
end if 
end do
write(*,*) ''
write (*,*) 'maximum range = ' , max_range , 'at ' , max_degree, 'degree'
end program maxm
