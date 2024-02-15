program spline 
implicit none
integer::n,i,j
real, dimension(100)::a,b,c,r,beta,rho,x
write(*,*) 'enter the value of requred array a,b,c,r'
!read(*,*) a(i),b(i),c(i),r(i)
write (*,*) 'enter the value of n'
read(*,*) n
do i=2,n
read(*,*) a(i)
end do
do i=i,n
read(*,*) b(i)
end do
do i=i,n-1
read(*,*) c(i)
end do
do i=i,n
read(*,*) r(i)
end do
if (b(i)==0) then 
write(*,*) 'the diagonalisation elements are zero'
else
 beta(1) = b(1)
rho(1) = r(1)
do j=2,n
beta(j) = b(j)-a(j)*c(j)/beta(j-1)
rho(j)= r(j)-a(j)*rho(j-1)/beta(j-1)
if (beta(j)==0) exit
x(n) = rho(n)/beta(n)
end do 
end if
do j=1,n-1
x(n-j) = rho(n-j)-c(n-j)*x(n-j+1)/beta(n-j)
end do
write(*,*) 'values=', x(n-j)
end program spline
