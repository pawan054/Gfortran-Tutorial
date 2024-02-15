program go
implicit none
real::sum
integer::i
sum=0
i=1
11 sum=sum+i
i=i+2
if (i<=100) goto 11
write(*,*) 'sum is ', sum
end program go 
