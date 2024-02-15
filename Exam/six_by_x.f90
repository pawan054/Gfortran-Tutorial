function q(x)
implicit none
real::q,x,f,pi,an
pi = 4.*atan(1.0)
an = x*(pi/180.)
f= sin(an)/an
end function q


program hab
implicit none
!integer::i
real:: y,x,q
!do i =90, 0, -1
!y= q(real(i))
!write(*,100) 'The value of y at x =',i,' is  ',y
!100 format (A,1x,I2,A,F9.6)
do 
write(*,*) 'Enter the value of x'
read(*,*) x
y= q(x)
write(*,100) 'The value of y at x =',x,' is  ',y
100 format (A,1x,F10.7,A,F10.7)
if (x==0) exit
end do
end program hab
