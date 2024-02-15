program monte
  implicit none
  integer   :: n,i
  real :: a,b, x,inte,f,inte_final,error
   !write(*,*) 'enter the value of lower limit'
  ! write(*,*) 'enter the value of upper limit'
  ! read(*,*)b
   write(*,*) 'enter the value of random sample'
   read(*,*)n
   a = 0.0
   b = 2*atan(1.)
   inte=0.0
   call srand(86754)
  do i = 1, n
    ! Generate random number between a and b
     x = a +(b - a) * rand()
     inte = inte + f(x)
  end do
  inte_final= (inte/real(n)) *(b-a)
  error = abs((inte_final - 1.0)/1.0)
  write(*,*) "Approximate integral: ", inte_final,'with error =',error 
end program monte
real function f(t)
real::t
f= 1/(1+cos(t))
end function

