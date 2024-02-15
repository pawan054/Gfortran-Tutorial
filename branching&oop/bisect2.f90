program bisect
implicit none
integer:: i,n
real:: x0,x1,epsi,f,xleft,xright
real:: fxleft,fxright,xm,fxm
n=1000
write(*,*) 'provide the value of epsilon'
read(*,*) epsi
11 write(*,*) 'provide the value of xleft, xright'
read(*,*) xleft,xright
fxleft = f(xleft)
fxright = f(xright)
if (fxleft*fxright>0) then
write(*,*) 'inputs are not proper renetr value'
go to 11
else
do i=1,n
xm = (xleft+xright)/2.0
fxm= f(xm)
write(*,*) 'step=',i,'x1=',xleft, 'x2=', xright, 'f(x2)=' ,fxm
if ((f(xleft)*f(xm))>0) then 
xleft =xm
fxleft = f(xm)
else
xright =xm
fxright = f(xm)
end if 
if (abs(xleft-xright)<epsi) then
write(*,*) 'the root is found'
write(*,*) 'the root after iterations',xm,i
exit
end if
end do
end if
end program bisect
real function f(y) 
real::y
f=cosy-y
end function
