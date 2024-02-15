subroutine f1(x,f)
real::x,f
f = cos(x)-x
end subroutine f1
program bisect_root
implicit none
real:: left,right, middle, fleft,fmiddle, fright,f
real:: tol,error
tol = 5.0e-03
error = 1.0
write(*,*) 'Enter the value of left: '
read(*,*) left
write(*,*) 'Enter the value of right: '
read(*,*) right
call f1(left,fleft)
call f1(right,fright)
do while ( error .gt. tol) 
 middle = (left+right)/2.0
    call f1(middle,fmiddle)
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
