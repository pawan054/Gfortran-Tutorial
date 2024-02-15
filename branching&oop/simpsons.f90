program simpson
implicit none
integer:: i,j,n
real:: a,b,inte,f,h,sum1=0
write(*,*) 'enter the value of lower limit'
read(*,*) a
write(*,*) 'enter the value of uper limit'
read(*,*) b
write(*,*) 'enter the number of sub intervals'
read(*,*) n
h=(b-a)/n
sum1=f(a)+f(b)
do i= 1,n-1
if (mod(i,2).eq.0) then
sum1= sum1+2*f(a+i*h)
else 
sum1= sum1+4*f(a+i*h)
end if 
end do
inte= (h/3)*sum1
write(*,*) 'required integration is' , inte
end program simpson
real function f(x)
real::x
f= x**2
end function
