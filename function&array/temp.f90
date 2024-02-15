program temp
implicit none
real:: cel, far
open(44, file="ftoc.txt")
read(44,*) far
cel = ((5/9)*(far-32))
open(41, file="ctof.txt")
write(41,*)cel
end program temp
