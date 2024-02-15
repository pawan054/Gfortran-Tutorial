program carbon
implicit none
real,parameter :: lamda= 0.00012097 !in year
real:: percent,age
real:: ratio
write(*,*) 'enter the percentage of c-14 remaining'
read(*,*) percent
write(*,*) 'the remaning carbon -14 is ' ,percent,'%'
ratio = percent/100.0
age = (-1.0/lamda)*log(ratio)
write(*,*) 'the age of sample in year is ' , age ,'year'
end program carbon
