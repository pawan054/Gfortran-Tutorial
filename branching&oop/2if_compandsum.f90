program com
implicit none
real::x,y,z
write(*,*) 'enter the value of x and y'
read(*,*)x,y
if(x>y) then
write(*,*) 'x is greater than y'
write(*,*) 'the value of x and y is' ,x,y
z=x-y
write(*,*) 'the difference of numbers provided is' ,z
else if (x==y) then
write(*,*) 'x is equals to y'
write(*,*) 'the value of x and y is' ,x,y
z=x*y
write(*,*) 'the product of numbers provided is' ,z
else
write(*,*) 'x is less than y'
write(*,*) 'the value of x and y is' ,x,y
z=x+y
write(*,*) 'the sum of number provided is' ,z
end if
end program com
! Practice:  write algorithm to check whether the quadrstic equation has distinct,equal or complex roots. Also presents flow chart. Also express pseudocode then write a code following algorithm/flowchart/pseusocode.
