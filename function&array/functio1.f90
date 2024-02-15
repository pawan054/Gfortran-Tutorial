program apa
implicit none
real:: a,b,c,av1,av2,av,average
write(*,*) 'enter the value of a,b,c'
read(*,*) a,b,c
av = average(a,b,c)
av1=av**2
av2=average(a**2,b**2,c**2)
write(*,*) 'the average of the number is ' ,av,av1,av2
end program apa
real function average(x,y,z)
real::x,y,z,sum1
sum1=x+y+z
average=sum1/3.0
end function 
