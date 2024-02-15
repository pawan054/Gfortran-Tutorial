program nam
implicit none
character(len=12):: first, middle, last, add
integer:: grade
write(*,*) 'Enter your first name: '
read(*,*) first
write(*,*) 'Enter your middle name: '
read(*,*) middle
write(*,*) 'Enter your last name: '
read(*,*) last
write(*,*) 'Enter your class : '
read(*,*) grade
write(*,*) 'Enter your address: '
read(*,*) add
write(*,112) first,middle,last, add, grade
112 format (A10,T13,A1, T15, A4, T17, A10, T29, I3 )
end program nam
