program square_cube
implicit none
integer:: cube,square, i
real::square_root
write(*,100)
100 format (T3, 'Table of number, their square root, square and cube'/)
write(*,110)
110 format (T4,'Number',T13,'Square_root',T29,'Square',T39,'cube')
write(*,120)
120 format (T4,'======',T13,'===========',T29,'======',T39,'====')
do i = 1,10
square_root = sqrt(real(i))
square = i**2
cube = i**3
write(*,130) i,square_root,square,cube
130 format (1x, T4, I4, T13, F10.6, T27, I6, T37, I6)
end do
end program square_cube 
