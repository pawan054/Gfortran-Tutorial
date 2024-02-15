program log_function
implicit none
real:: x, fofx
write(*,*) 'Enter the value of x: '
read(*,*) x
if (x>=1.0) then
write(*,*) 'you enter wrong value of x, so renter value less than 1.0: '
else 
fofx = log(1/(1-x))
write(*,*) 'The value of y(x) at ',x, 'is ',fofx
end if
end program log_function
