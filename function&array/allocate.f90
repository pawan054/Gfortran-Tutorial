program allow
implicit none
real,dimension(:),allocatable::a,b,c
integer::i
real::dot_product
!At the run time, the actual bounds for the array . A may be determined
! by the statement allocate (A(N))
allocate (a(7))
allocate (b(7))
a=(/2,4,6,8,10,12,14/)
b=(/5,10,15,20,25,30,35/)
c=a+b
do i=1,7
write(*,*) a(i), b(i), a(i)-b(i),c(i),dot_product(a,b)
end do
end program allow
