program fact
implicit none
integer::i, n
real::f = 1
write(*,*) 'Enter the number to be calculated factorial: '
read(*,*) n
if (n<0) then 
write(*,*) ' Factorial of negative number is not defined'
else if (n==0) then 
write(*,*) ' The factorail of zero is 1'
else 
do i = 1, n
f = f*i
end do
write(*,*) 'Factorial of ',n, 'is',f
end if 
end program fact
