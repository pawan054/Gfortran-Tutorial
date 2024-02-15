program for_m
implicit none
integer::i
real::f
i = 300
f= 3.1424
write(*,100) i,f
100 format ('The value of ', I3,' is', F7.3)
write(*,*) ' the value of ', i, 'is', f
end program for_m
