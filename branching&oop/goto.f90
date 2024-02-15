program go
implicit none
real:: r,s,t
integer:: i,j,sum1
sum1=0
i=1
1010 sum1=sum1+i
i=i+1
if(i<101) goto 1010
write(*,*) 'sum is ', sum1
end program
