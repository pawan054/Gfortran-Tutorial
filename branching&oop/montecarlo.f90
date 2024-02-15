program monte_carlo_integration
  implicit none
  integer   :: n,i
  real :: a,b, xrand,sum1,f,inte,x,y
   write(*,*) 'enter the value of lower limit'
   read(*,*)a
   write(*,*) 'enter the value of upper limit'
   read(*,*)b
   write(*,*) 'enter the value of random sample'
   read(*,*)n
   sum1=0.0
   call srand(86754)
  do i = 1, n
    ! Generate random number between a and b
    xrand = a +(b - a) * rand()
     sum1= sum1+f(xrand)
     !write(*,*) xrand
     !write(*,*) y
  end do
  inte= (sum1/n) *(b-a)
  
  ! Print the result
  write(*,*) "Approximate integral: ", inte
  
end program monte_carlo_integration
real function f(t)
real::t
f= t**2
end function


