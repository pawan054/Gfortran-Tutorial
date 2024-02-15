program sub
implicit none
real::p,b
real::h
write(*,*) 'write length of p and b'
read(*,*) p,b
call pawan(p,b,h)
write(*,23) h
23 format ('the length of hypotaneous is ' ,f14.10)
end program 
subroutine pawan(p1,b1,h1)
implicit none
real, intent(in)::p1
real,intent(in) ::b1
real, intent(out)::h1
real::temp
temp= p1**2+b1**2
h1=sqrt(temp)
end subroutine pawan
