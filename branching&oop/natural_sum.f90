!program nat
!implicit none
!integer:: i=0, sum1=0,n
!write(*,*) 'tell the number upto which you want to sum'
!read(*,*) n
!do while (i<n)
!i=i+1
!sum1=sum1+i
!end do
!write(*,*) ' the sum is 100 natural number is',sum1
!end program nat
program nat2
!implicit none
integer:: i=0, sum1=0
write(*,*) 'tell the number upto which you want to sum'
read(*,*) n
do
if (i>=n) exit
i=i+1
sum1=sum1+i
end do
write(*,*) 'the sum is ', sum1
end program nat2

!program nat3
!implicit none
!integer:: i,sum1=0
!write(*,*) 'tell the number upto which you want to sum'
!read(*,*) n
!do i=1,n
!sum1=sum1+i
!end do
!write(*,*) 'the sum is ', sum1
!end program nat3 
