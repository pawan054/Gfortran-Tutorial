!============== met.f90     ==================
subroutine met()
 include 'include.inc'
 integer :: i,k
 integer :: nn,snn,dE

 do k=1,N
!pick a random site:
  i = INT(N*drandom())+1
!snn=sum of neighboring spins:
  snn = 0
  nn=i+XNN;if(nn.gt.N)nn=nn-N;snn = snn + s(nn)
  nn=i-XNN;if(nn.lt.1)nn=nn+N;snn = snn + s(nn)
  nn=i+YNN;if(nn.gt.N)nn=nn-N;snn = snn + s(nn)
  nn=i-YNN;if(nn.lt.1)nn=nn+N;snn = snn + s(nn)
!dE=change in energy/2:
  dE=snn*s(i)
!flip:
  if(dE.le.0)then
   s(i) = -s(i) !accept
  else if(drandom() < prob(dE))then
   s(i) = -s(i) !accept
  endif
 enddo !do k=1,N: end sweep
end subroutine met
!  
