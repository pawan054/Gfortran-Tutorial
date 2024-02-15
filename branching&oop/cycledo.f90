program apu
implicit none
real::x
integer:: i
do i=1,100
if (i==3 .or. i==5) cycle
write(*,*) i
end do
write(*,*) ' end of loop '
end program apu
