program multi_monte
implicit none
integer::i,n
real:: a,b,c,d,g,h,f,x,y,z,sum1=0,inte,r
write(*,*) 'enter lower limit a c g and upper limit b,d h'
read(*,*) a,b,c,d,g,h
write(*,*) 'enter the sample size'
read(*,*) n
call srand(86574)
do i =1,n
x= a+(b-a)*rand()
y= c+(d-c)*rand()
z= g+(h-g)*rand()
sum1= sum1+f(x,y,z)
end do
write(*,*) sum1
inte = (h-g)*(b-a)*(c-d)*(sum1/n)
write(*,*) 'required integration is ', inte
end program multi_monte
real function f(x,y,z)
real::x,y,z
f = exp(-x*y*z)
end function

