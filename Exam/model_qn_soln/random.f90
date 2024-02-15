program randr
implicit none
real:: x,y
integer:: seed,i,n
n= 1000
seed= 846734
open (10,file = 'random_1k.dat')
call srand (seed)
do i=1,n
x= rand()
y=rand()
write(10,'(2F12.6)' ) x,y
end do
close(10)
end program randr
