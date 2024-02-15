program count_n
implicit none
integer::i
!i=0
!do while(i<=100)
do i=0,100,2
write(*,*) i
!i = i+1
end do 
end program count_n
