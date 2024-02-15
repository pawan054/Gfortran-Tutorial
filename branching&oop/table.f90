program table
implicit none
integer:: i,cube,square,square_root
write(*,102)
102 format (T3, The table of number suare and square roots '/)
write(*,112)
112 format (t4,'number' , t13 square_root',t29, 'square', t39, 'cube'/)
write(*,132)
132 format (t4, '========', t13, '========',t29, '========', t39,'======'/)
do i=1,10
square_root= sqrt(real(i))
square=i**2
cube =i**3
write(*,142) i,square_root,square,cube
142 format (1x, t4, i4, t13, f10.6, i6, t37, i6)
end do
end program table
