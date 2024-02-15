program pi
implicit none 
real :: x,y, pi_estimate
integer :: i,  N, seed ,count
count = 0.0
write(*,*) ' Enter the value of MC steps : '
read (*,*) N 
seed = 86754 
call srand (seed)
 do i = 1, N 
x = rand()
y = rand()
    if (x**2 + y**2 .le. 1.0) then 
    count = count + 1
    end if 
 ! write (*,*) x, y
  end do 
   pi_estimate = 4.0 * real(count) / real(N)
  write(*,*) 'Estimated pi at N= ',N,'is ',pi_estimate
  end program pi
  
