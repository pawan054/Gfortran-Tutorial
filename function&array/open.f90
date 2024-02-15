program open
implicit none
real:: x,y,z
open(22, file="open_file")
read(22,*) x,y
z=x**2+y**2
write(*,*) 'the result is ' , z
open(21,file= "writefile")
write(21,*) z
stop
end program open
