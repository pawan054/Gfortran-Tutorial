program arr
implicit none
integer,dimension(3,3)::matrix
integer::i,j
do i=1,3
do j=1,3
write(*,*) 'enter the value of a',i,j
read(*,*) matrix(i,j)
end do
end do
do i=1,3
do j=1,3
write(*,*) matrix(i,j)
end do 
end do
end program arr
