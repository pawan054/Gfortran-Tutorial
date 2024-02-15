!============== measure.f90 ==================
subroutine measure()
 include 'include.inc'
 integer :: E,M
 print *, E(),M()
end subroutine measure
!=====================
integer function E()
 include 'include.inc'
 integer en,sum,i,nn
 en = 0
 do i=1,N
!Sum of neighboring spins: only forward nn necessary in the sum
  sum = 0
  nn=i+XNN;if(nn.gt.N)nn=nn-N;sum = sum + s(nn)
  nn=i+YNN;if(nn.gt.N)nn=nn-N;sum = sum + s(nn)
  en=en+sum*s(i)
 enddo
 e = -en
end function E
!=====================
integer function M()
 include 'include.inc'
 M=SUM(s)
end function M
!  
