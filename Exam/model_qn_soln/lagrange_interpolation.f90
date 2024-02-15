program lagrange 
implicit none
real,dimension(4)::x,y
real:: lj,p,sump,xvalue,yvalue
integer ::i,j 
x = [0.0,1.0,2.0,3.0]
y = [0.0, 0.4405, 0.57672, 0.33905]
xvalue = 2.5  
sump = 0.0
  do i = 1,4
      p = y(i)
      Lj =1.
     do j = 1,4 
      if (i .ne.j) then 
      Lj = Lj * (xvalue - x(j))/(x(i)-x(j))
      end if 
     end do 
     p = y(i)*Lj
     sump = sump + p
   end do 
 !  yvalue = sump 
write(*,*) 'At x = ',xvalue,' y = ',sump
end program lagrange
    
