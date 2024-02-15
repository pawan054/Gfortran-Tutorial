program fun
implicit none
real::p,b,h
write(*,*) 'enter the value of p,b'
read(*,*) p,b
write(*,*) 'the required hypotaneous for given p, b is',h
end program fun
function cal(a,b,c)
real::a,b,c
c= sqrt(a**2+b**2)
return
end function cal
