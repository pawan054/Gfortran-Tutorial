program acc
implicit none
real:: G,R,M,gacc
integer:: i,h
G=6.67e-11
M= 5.98e24
R=6371000
write(*,*) 'enter the value of final height'
read(*,*) h
do i=0,h , 500000
if (i>=h) exit
gacc = -1.*G*M / ((R+h)**2)
write(*,*) gacc
end do
end program
