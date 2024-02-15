program trapezoidal
implicit none
integer:: i,n
real:: a,b,f,h,inte,int_final
write(*,*) 'enter the value of lower limit'
read(*,*) a
write(*,*) 'enter the value of uper limit'
read(*,*) b
write(*,*) 'enter the number of sub intervals'
read(*,*) n
h=(b-a)/n
inte=f(a)+f(b)
do i= 1,n-1
inte= inte+2*f(a+i*h)
end do
int_final= (h/2)*inte
write(*,*) 'required integration is' , int_final
end program trapezoidal
real function f(x)
real::x
f = 1/(1+x**2)
end function
