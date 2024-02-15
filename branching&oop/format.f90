program raw
implicit none
integer::i
real:: result1
i=785
result1=983.768
write(*,100) i,result1
100 format ( 'the ressult for iteration',I3, 'is'F7.3)
end program raw
