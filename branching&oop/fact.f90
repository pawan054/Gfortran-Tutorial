program fact
implicit none
integer:: i,n
real:: factorial=1
write(*,*) 'tell the number of which you want to have factorial'
read(*,*) n
if (n==0) then
factorial=1
write(*,*) 'the factorial is ',factorial
else if (n<0) then 
write(*,*) 'the factorial does not exist'
else 
do i=1,n
factorial=factorial*i
end do
write(*,*) 'the factorial is',factorial
end if
end program fact
