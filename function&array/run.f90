program run
     ! implicit none
     ! integer:: i
      !x=3
      !do i=1,x-1
      !write(*,*) 'the value of x is ' ,x
      !write (*,*) 'the x is real number'
      !end do
INTEGER :: i
DO i = 1,10
if (i<=7) cycle
write(*,*) i
END DO
 WRITE (*,*) 'iteration =',i
      end program run
