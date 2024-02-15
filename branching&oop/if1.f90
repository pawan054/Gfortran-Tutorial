program apu
implicit none
real:: a,b,c
a=105
b=200
c=a+b
if (c==300) then
write(*,*) 'the sum exists which is given by c' ,c
end if
if (c/=300) then 
write(*,*) 'the sum still exits but out of our range'
end if 
end program apu
