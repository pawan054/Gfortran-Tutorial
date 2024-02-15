program go
implicit none
real::sum
integer::i
sum=0
do 11 i=1,100
sum=sum+i
11 continue
write(*,*) 'sum is ', sum
end program go 
! Hw Discuss the aplication of go to continue 
! ex 4.4,ex 4.7, 4.11, 4.12, 4.14,4.16,4.18,4.22, from book
