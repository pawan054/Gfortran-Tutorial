program trapezoidal
implicit none
integer:: i,n
real:: a,b,f,h,inte,int_final,error
!write(*,*) 'enter the value of lower limit'
!read(*,*) a
!write(*,*) 'enter the value of uper limit'
!read(*,*) b
write(*,*) 'enter the number of sub intervals'
read(*,*) n
a= 0.0
b= 2*atan(1.0)
h=(b-a)/n
inte=f(a)+f(b)
do i= 1,n-1
inte= inte+2*f(a+i*h)
end do
int_final= (h/2)*inte
error = abs(int_final -1.0/1.0)
write(*,*) 'required integration is' , int_final,'with error =',error
end program trapezoidal
real function f(x)
real::x
f = 1/(1+cos(x))
end function
