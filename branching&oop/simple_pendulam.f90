program app
implicit none
integer::i,n,j
real:: a,b,h,sum1,inte,f, pi,theta,theta0,p,k,l,g,T1,T2,error,amp
!write(*,*) 'enter the value of a'
!read(*,*) a
!write(*,*) 'enter the value of b'
!read(*,*) b
write(*,*) 'enter the value of n'
read(*,*) n
!write(*,*) 'enter the value of maximum theta'
!read(*,*) theta
l=1.5
g= 9.8
pi = 4*atan(1.0)
a=0.0
b= pi/2
h= (b-a)/n
do j=0,180
theta0 = (pi/180)*j
k= sin(theta0/2)
p= (asin(k)) * (180./pi)
sum1=0
sum1= sum1+ (f(k,a) + f(k,b))
do i= 1,n-1
if (mod(i,3) .eq.0) then 
sum1 = sum1+2.0*F(k,a+i*h)
else
sum1 = sum1+3.0*F(k,a+i*h)
end if
end do
inte= (3*h/8)*sum1
T1= 4*sqrt(l/g)*inte
T2 = 2*pi*sqrt(l/g)
write(*,*) ' sin^-k = ',p, 'K(k) = ', inte, 'T1=', T1, 'T2',T2
error = (abs(T1-T2) / T1) * 100
write(*,*) 'the error is',error
if (error>1) then
amp = p
write(*,*) 'the amplitude is ', p
end if
end do
end program 
real function f(x,y)
real:: x,y
f= 1/(sqrt(1-(x**2)*(sin(y))**2))
end function
