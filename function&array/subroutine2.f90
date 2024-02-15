subroutine mapping(x,f,f_prime)
real, intent(in)::x
real, intent(out)::f
real, intent(out)::f_prime
f= x**2+2.*x+3.
f_prime= 2.*x+2.
end subroutine mapping
program map
!implicit none
real::a,b,c
integer::i,n
n=10
do i=1,n
write(*,*) 'enter the values of x to be mapped out'
read(*,*) a
if (a==n) exit
end do
!write(*,*) 'enter the value of x to be mapped'
!read(*,*) a
do i=1,n
call mapping(a,b,c)
write(*,*) 'At x =',a ,'f(x)=', b , 'f_prime(x)=', c 
end do
end program map
