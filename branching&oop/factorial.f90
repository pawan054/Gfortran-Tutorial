program apu
implicit none
real::fact
integer:: x,i
fact= 1
write(*,*) 'enter the value of x'
read(*,*) x
do i=1,x
fact= fact*i
end do
write(*,*) ' the factorial is ' ,fact
end program apu
