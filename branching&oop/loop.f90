program meant
implicit none
real:: x=0, n=0, sumx=0, sumx2=0 , mean, sd

do
write(*,*) 'enter the value'
read(*,*) x
if (x<0) exit
n=n+1
sumx=sumx+x
sumx2=sumx2+x**2
end do
mean = sumx/real(n)
write(*,*) 'the mean is ' ,mean
end program meant
