!============== main.f90    ==================
program Ising2D
 include 'include.inc'
 integer :: start     !start= 0 (cold)/1 (hot)
 integer :: isweep, nsweep
 nsweep = 1000000
 beta=0.01;seed=987983;start=1;
 call init(start)
 do isweep = 1, nsweep
  call met
  call measure
 end do
end program Ising2D
!  
