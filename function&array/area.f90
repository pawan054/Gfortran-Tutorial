program area
real::a,b,c,s,p
write(*,*)'enter the value of a,b,c'
read(*,*) a,b,c
s= (a+b+c)/2
p=sqrt(s*(s-a)*(s-b)*(s-c))
write(*,*)'the area of scalene triangle is', p
stop
end program area

