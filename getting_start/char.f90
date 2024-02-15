program chars
implicit none
character(len=5):: char
write(*,*) 'eneter any character'
read(*,*) char
write(*,*) 'the character is ' , char
stop
end program chars
