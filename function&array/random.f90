program randr
implicit none
real:: x,y
integer:: seed,i
seed= 846734
call srand (seed)
do i=1,100
x= rand()
y=rand()
write(*,*) x,y
end do
end program randr
