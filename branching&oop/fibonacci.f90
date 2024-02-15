program fibo
implicit none
real:: f1,f2,f3
integer:: i,n
f1=1
f2=2
write(*,*) 'Enter the value of n'
read(*,*) n
write(*,*) 'the terms are ' ,f1
write(*,*) 'the terms are ' ,f2
i=3
do 
if (i>n) exit
f3=f1+f2
write(*,*) 'the terms are',f3
f1=f2
f2=f3
i=i+1
end do  
end program fibo
