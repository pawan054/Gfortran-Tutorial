program apu
implicit none
real:: sumx
integer:: i
sumx = 0.0
do i=1,100
sumx= sumx+i++
end do
write(*,*) ' the sum is ' ,sumx
end program apu
