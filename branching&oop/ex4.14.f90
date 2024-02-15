program ex4
      implicit none
      real::x,y
      do while (x<1)
      y=log(1./(1.-x))
      write(*,*) 'enter the value of x'
      read(*,*) x
      y=log(1./(1.-x))
      end do
     write(*,*) ' the vale of natural function for legal x',y
      end program ex4
