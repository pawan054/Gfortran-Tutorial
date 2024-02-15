program lagrange 
implicit none
real,dimension(4)::x,y
real:: lj,f,p,xvalue,yvalue
integer ::i,j 
x = [0.0,1.0,2.0,3.0]
y = [0.0, 0.4405, 0.57672, 0.33905]
xvalue = 2.5  
p = 0.0
  do i = 1,4
      f = y(i)
      Lj =1.
     do j = 1,4 
      if (i .ne.j) then 
      Lj = Lj * (xvalue - x(j))/(x(i)-x(j))
      end if 
     end do 
     f = f *Lj
     p = p + f
   end do 
   yvalue = p 
write(*,*) 'At x = ',xvalue,' y = ',yvalue
end program lagrange
    
