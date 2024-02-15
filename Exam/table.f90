program table
implicit none
integer::i, j, prod
do i = 1, 20
  do j= 1, 10 
    prod = i*j
    write(*,*) i,'*',j,'=',prod
   end do
end do
end program table
