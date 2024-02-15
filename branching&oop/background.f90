program back
implicit none
real:: x=0, n=0, sumx=0, sumx2=0,mean,sd
do 
write(*,*) ' enter your data one by one'
read(*,*) x
if (x<=0) exit
n=n+1
sumx=sumx+x
sumx2=sumx2+x**2
end do
mean = sumx/real(n)
sd= sqrt((real(n) * sumx2 - mean**2)) / (real(n) * real(n-1))
write(*,*) 'the mean and standard deviation of given datum are' ,mean,sd
end program
