
real(8) function drandom()
 implicit none
 integer,parameter :: a = 16807      ! a = 7**5
 integer,parameter :: m = 2147483647 ! m = a*q+r   = 2**31-1
 integer,parameter :: q = 127773     ! q = [m/a]
 integer,parameter :: r = 2836       ! r = MOD(m,a)
 real(8),parameter :: f = (1.0D0/m)
 integer           :: p
 integer           :: seed
 real(8)           :: dr
 common /randoms/seed
101 continue
 p       = seed/q              !  = [seed/q]
 seed    = a*(seed- q*p) - r*p !  = a*MOD(seed,q)-r*[seed/q] = MOD(a*seed,m)
 if(seed .lt. 0) seed = seed + m
 dr      = f*seed
!Not necessary with gfortran and ifort on linux but prudent.
!It increases CPU time ~ 10% over the whole period (ifort, 23% gfortran)
 if( dr .le. 0.0D0 .or. dr .ge. 1.0D0) goto 101
 drandom = dr
end function drandom

