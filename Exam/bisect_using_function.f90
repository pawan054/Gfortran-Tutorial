function f1(x)
real::x,f,f1
f = cos(x)-x
end function f1
program bisect_root
implicit none
real:: left,right, middle, fleft,fmiddle, fright,f1
real:: tol,error
tol = 5.0e-03
error = 1.0
write(*,*) 'Enter the value of left: '
read(*,*) left
write(*,*) 'Enter the value of right: '
read(*,*) right
fleft = f1(left)
fright = f1(right)
do while ( error .gt. tol) 
 middle = (left+right)/2.0
    fmiddle = f1(middle)
    if (fleft*fmiddle .le. 0 ) then 
    right = middle
    fright = fmiddle
    else
    left = middle
    fleft = fmiddle
    end if
    error = abs( (right-left)/middle)
    end do
    write(*,*) 'Root found at ',middle
    end program bisect_root
