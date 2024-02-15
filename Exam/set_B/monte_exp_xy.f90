program exp_xy
implicit none 
real:: a,b,c,d,x,y,inte,inte_final,error,f
integer:: i,n,seed
a = 0
b = 2.
c = 0
d = 1.
inte = 0.0
seed = 86754
call srand(seed)
write(*,*) 'Enter the total number of random samples'
read(*,*) n
   do i = 1, n 
      x = a + (b-a) * rand()
      y = c + (d-c) * rand()
      inte = inte + f(x,y)
    end do 
    
 inte_final = (b-a)*(d-c)* (inte/real(n))
 write(*,*) 'Appromated integral is ',inte_final
 end program exp_xy
 
 function f(x,y)
 real::f,x,y 
 f = exp(-x*y)
 end function f   
    
