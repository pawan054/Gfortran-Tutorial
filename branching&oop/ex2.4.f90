program power
implicit none
real::V,I,R,P,Q,S,PF,theta,t,pi
write(*,*)'enter the source voltages in volt'
read(*,*) V
write(*,*)'enter the magnitude of impedance'
read(*,*) R
write(*,*)'enter angle in degree'
read(*,*) t
pi=4.0*atan(1.0)
theta=t*(pi/180)
I= V/R
P=V*I*COS(theta)
Q=V*I*SIN(theta)
S=V*I
PF=COS(theta)
write(*,*) 'the value of current is',I
write(*,*) 'the value of real power is',P
write(*,*) 'the value of reactive power is',Q
write(*,*) 'the value of power factor is',PF
write(*,*) 'the value of appearent power',S
stop
end program power 
