program raw
implicit none
real::x,y
integer::i
open(unit=1,file='pawan.dat', action ='read', status ='old')
open(unit=2,file='pawan1,.dat', action ='read', status ='new')
do i=1,10
read(1,*) x,y
write (2,*) x,y,x*y
end do
close(1)
close(2)
!write (2, *) x.y.x*y
end program raw
