subroutine hyp(a1,a2,a3)
implicit none
real, intent (in) ::a1
real, intent (in) ::a2
real, intent (out) ::a3
real:: temp
temp = a1**2+a2**2
a3 = sqrt(temp)
end subroutine hyp
program sub
implicit none
real::b,p,h
write(*,*) 'Enter the length of base'
read(*,*)b
write(*,*) 'Enter the length of perpendicular'
read(*,*)p
call hyp(b,p,h)
write(*,100)h
100 format ('The required hypotanoeus =',F7.2)
end program sub
