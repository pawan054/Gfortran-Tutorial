!============== init.f90    ==================
! file init.f90
! init(start): start = 0: cold start
!              start = 1: hot  start
!=============================================
subroutine init(start)
 include 'include.inc'
 integer :: start
 integer :: i
!----------------------
!initialize probabilities for E_\nu > E_mu
 prob=0.0D0
 do i=2,4,2 !i = dE/2 = (E_nu-E_mu)/2=2,4
  prob(i) = exp(-2.0D0*beta*i)
 enddo
!initial configuration:
 select case(start)
  case(0)!cold:
   s = 1 !all s(i) = 1
  case(1)!hot:
   do i=1,N
    if(drandom() .lt. 0.5D0)then
     s(i) =  1
    else
     s(i) = -1
    endif
   enddo
  case default
   print *,'init: start= ',start,' not valid. Exiting...'
   stop
  end select

end subroutine init
!  
