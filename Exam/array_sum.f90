program sam
implicit none
integer::num(100)
integer::sum1,i
sum1 = 0
do i =1, 100
     num(i) = i
     sum1 = sum1 + num(i)
     end do 
     write(*,*) 'sum = ', sum1
end program sam
    

