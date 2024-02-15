program cy
implicit none
integer:: i,j,n
do i=1,3
do j=1,4
if (j==4) cycle 
n= i*j
write(*,*) i, '*', j, '=' ,n
end do
end do
end program cy
