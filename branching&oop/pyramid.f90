program volume1
implicit none
real:: a,l,h,volume,tsa,lsa
write(*,*) 'enter the value of length of base'
read(*,*) a
write(*,*) 'enter the value of slant height'
read(*,*) l
h= sqrt(l**2-(a/2)**2)
write(*,*) 'the height is ', h
volume=((a**2)*h)/3
tsa=a**2+2*l*a
lsa=2*a*l
write(*,*) 'the volume of square based pyramid is ', volume
write(*,*) 'the total surface arae of square based pyramid is ', tsa
write(*,*) 'the curved surface area of square based pyramid is ', lsa
stop
end program volume1
!what are the different approaches to assign value of variables in fortran. Write any two examples 
! Explain "open" statment in fortran by two examples for each write and read statement.
