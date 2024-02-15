program simpson
implicit none
integer:: i,n
real:: a,b,inte,f,h,inte_final,error
!write(*,*) 'enter the value of lower limit'
!read(*,*) a
!write(*,*) 'enter the value of uper limit'
!read(*,*) b
write(*,*) 'enter the number of sub intervals'
read(*,*) n
a= 0.0
b= 2*atan(1.)
h=(b-a)/n
inte=f(a)+f(b)
do i= 1,n-1
if (mod(i,3).eq.0) then
inte= inte+2*f(a+i*h)
else 
inte= inte+3*f(a+i*h)
end if 
end do
inte_final = (3*h/8)*inte
error = abs ((inte_final - 1.00)/1.)
write(*,*) 'required integration is' , inte_final, 'with error= ',error
end program simpson
real function f(x)
real::x
f= 1/(1+cos(x))
end function
