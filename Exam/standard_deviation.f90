program std
implicit none
integer:: n = 0
real::x=0
real::mean
real::stand_d=0
real::sum_s2 = 0
real::sum1 = 0
do 
write(*,*) 'Enter the number :'
read(*,*)x
write(*,*) 'The number is ', x
if (x<0) exit
n = n+1
sum1 = sum1 + x
sum_s2 = sum_s2 + x**2
end do 
if (n<2) then 
write(*,*) 'insufficient data, enter value more than 2'
else
mean = sum1/real(n)
stand_d = sqrt((real(n)*sum_s2-sum1**2)/(real(n)*real(n-1)))
write(*,*) 'The mean of the data set is : ', mean
write(*,*) 'The standard deviation of the data set is : ', stand_d
write(*,*) 'The number of the data set is : ', n
end if
end program std
