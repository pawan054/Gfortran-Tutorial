program l
implicit none
integer:: p,q,r
p=0
q=2
do while (r<30) 
r =r+p+q
!write(*,*) 'sum is',r
end do 
write(*,*) 'sum is',r		
end program l
