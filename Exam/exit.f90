program ex
implicit none
integer::i
do i = 1,5
if (i==4) exit
write(*,*)i
end do
end program
