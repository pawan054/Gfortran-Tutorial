program arr
implicit none
integer:: i
real,dimension(10)::natural_number, square 
do i =1,10
natural_number(i) = i
square(i) = natural_number(i)**2
write(*,*) 'Number=',natural_number(i),'square =', square(i)
!100 format ('The natural number =',I6, 'coressponding suare = ' , I6)
end do
end program arr
