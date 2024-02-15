program inter
implicit none
integer:: i,j,n
real, dimension(10)::x,y
real::lf,yvalue,xvalue
write(*,*) 'provide value of n'
read(*,*) n
do i=1,n
read(*,*) x(i),y(i)
end do 
write(*,*) 'provide x to be interpolated'
read(*,*) xvalue
yvalue=0.0
do i=1,n
lf=1.0
do j=1,n
if (i/=j) then 
lf = lf*((xvalue-x(i))/(x(i)-x(j)))
else 
yvalue = yvalue+lf*y(i)
end if
end do 
end do
write(*,*) yvalue
end program
